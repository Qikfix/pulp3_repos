#!/bin/bash

# 
# License ......: GPL
# Developer ....: Waldirio M Pinheiro <waldirio@gmail.com> | <waldirio@redhat.com>
# Date .........: 02/24/2022
# Purpose ......: To extract the information from Postgres regarding to pulp3 (repos, content views, packages)
# 

STD_FILE="/var/log/pulp3_content_info.log"
REPORT_FILE="/var/log/pulp3_report_info.log"
TEMP_FILE="/var/tmp/pulp3_report_tmpdata.txt"
> $STD_FILE
> $REPORT_FILE
> $TEMP_FILE

main()
{

  echo "select base_path,pulp_created,pulp_last_updated from core_distribution" | su - postgres -c "psql pulpcore" >> $STD_FILE
  echo "" >> $STD_FILE

  path_of_repos=$(echo "select base_path from core_distribution" | su - postgres -c "psql pulpcore" | sed '1,2d' | grep -v ^$ | grep -v ^\( | sed -e 's/^ //g')

  for b in $path_of_repos
  do
    echo - $b >> $STD_FILE
    echo "select core_d.base_path,cpa.relative_path,ca.file from core_distribution as core_d RIGHT JOIN core_publication as cp ON core_d.publication_id=cp.pulp_id LEFT JOIN core_publishedartifact as cpa ON cp.pulp_id=cpa.publication_id LEFT JOIN core_contentartifact as core_ca ON core_ca.pulp_id=cpa.content_artifact_id LEFT JOIN core_artifact as ca ON ca.pulp_id=core_ca.artifact_id where core_d.base_path = '$b' order by core_d.base_path" | su - postgres -c "psql pulpcore" >> $STD_FILE
    echo >> $STD_FILE
    echo >> $STD_FILE
    echo >> $STD_FILE
    echo >> $STD_FILE
  done
}

basic_info()
{
  echo "#######################" >> $REPORT_FILE
  echo "Basic Pulp3 Information" >> $REPORT_FILE
  echo "#######################" >> $REPORT_FILE
  echo "" >> $REPORT_FILE

  org_name=$(cat $STD_FILE | grep "^- " | cut -d/ -f1 | sed -e 's/^- //g' | sort -u) 
  lifecycle_name=$(cat $STD_FILE | grep "^- " | cut -d/ -f2 | sed -e 's/^- //g' | sort -u) 
  cv_name=$(cat $STD_FILE | grep "^- " | cut -d/ -f3 | sed -e 's/^- //g' | grep -v -E '(^content$|^custom$)'| sort -u)


  echo "# Organization(s):" >> $REPORT_FILE
  echo "------------------" >> $REPORT_FILE
  echo "$org_name" | xargs echo | sed 's/ / , /g' >> $REPORT_FILE
  echo >> $REPORT_FILE
  echo "# LifeCycle(s):" >> $REPORT_FILE
  echo "---------------" >> $REPORT_FILE
  echo "$lifecycle_name" | xargs echo | sed 's/ / , /g' >> $REPORT_FILE
  echo >> $REPORT_FILE
  echo "# Content View(s):" >> $REPORT_FILE
  echo "------------------" >> $REPORT_FILE
  echo "$cv_name" | xargs echo | sed 's/ / , /g' >> $REPORT_FILE
  echo >> $REPORT_FILE
  echo >> $REPORT_FILE
  echo >> $REPORT_FILE
}

detailed_repo_info()
{
  echo "#######################################" >> $REPORT_FILE
  echo "Presentation of Individual Repositories" >> $REPORT_FILE
  echo "#######################################" >> $REPORT_FILE
  echo "" >> $REPORT_FILE

  repo_list=$(cat $STD_FILE | grep "^- " | sed -e 's/^- //g')

  echo -e "Repo_Path\tRPM_Count_in_Metadata\tRPM_Count_in_DB" >> $TEMP_FILE
  echo -e "---------\t---------------------\t---------------\n" >> $TEMP_FILE

  for b in $repo_list
  do

    PULP_PATH="/var/lib/pulp/media"

    # Adding space after $b to match the exact repo path
    number_of_packages=$(cat $STD_FILE 2>/dev/null | grep "$b " | grep .rpm | wc -l)
    repomd_artifact=$(cat $STD_FILE 2>/dev/null | grep "$b " | grep repomd.xml | awk '{print $NF}')
    primary_file=$(cat $PULP_PATH/$repomd_artifact 2>/dev/null | grep primary.xml | cut -d\" -f2)
    primary_file_artifact=$(cat $STD_FILE 2>/dev/null | grep "$b " | grep "$primary_file" | awk '{print $NF}')
    number_of_packages_metadata=$(zcat $PULP_PATH/$primary_file_artifact 2>/dev/null | grep -o "packages=\"".* | cut -d\" -f2)

    echo -e "**$b\t$number_of_packages_metadata\t$number_of_packages"

  done  >> $TEMP_FILE
  cat $TEMP_FILE | column -t  >> $REPORT_FILE 
  rm -f $TEMP_FILE

  echo -e "\n\n\n" >> $REPORT_FILE

}

general_cv_info()
{
  echo "#####################################################" >> $REPORT_FILE
  echo "Presentation of Content View / Composite Content View" >> $REPORT_FILE
  echo "#####################################################" >> $REPORT_FILE
  echo "" >> $REPORT_FILE

  org_name=$(cat $STD_FILE | grep "^- " | cut -d/ -f1 | sed -e 's/^- //g' | sort -u) 
  lifecycle_name=$(cat $STD_FILE | grep "^- " | cut -d/ -f2 | sed -e 's/^- //g' | sort -u) 
  cv_name=$(cat $STD_FILE | grep "^- " | cut -d/ -f3 | sed -e 's/^- //g' | grep -v -E '(^content$|^custom$)'| sort -u)
 
  echo -e "Organization\tLifeCycle\tContent_View\tRPM_Count_in_Metadata\tRPM_Count_in_DB" >> $TEMP_FILE
  echo -e "------------\t---------\t------------\t---------------------\t---------------" >> $TEMP_FILE

  for org in $org_name
  do
    for lfc in $lifecycle_name
    do
      for cv in $cv_name
      do
        full_filter="$org/$lfc/$cv/"
        count_entry=$(grep -A2 "$full_filter" $REPORT_FILE | wc -l)

        if [ $count_entry -ne 0 ]; then

          ## $2 is RPM_Count_in_Metadata  and $3 is RPM_Count_in_DB for each value matched by $full_filter

          total_cv_metadata=$(grep "^\*\*" $REPORT_FILE | grep "$full_filter" | awk '{print $2}' | grep -v "^$" | paste -s -d+ | bc)
          total_cv_DB=$(grep "^\*\*" $REPORT_FILE | grep "$full_filter" | awk '{print $3}' | grep -v "^$" | paste -s -d+ | bc)
	  echo -e "$org\t$lfc\t$cv\t$total_cv_metadata\t$total_cv_DB"
        fi

      done
    done
  done >> $TEMP_FILE


  # New for to check the default organization view
  for org in $org_name
  do
    total_cv_metadata=$(grep "^\*\*" $REPORT_FILE | egrep "($org/Library/content/)|($org/Library/custom/)" | awk '{print $2}' | grep -v "^$" | paste -s -d+ | bc)
    total_cv_DB=$(grep "^\*\*" $REPORT_FILE | egrep "($org/Library/content/)|($org/Library/custom/)" | awk '{print $3}' | grep -v "^$" | paste -s -d+ | bc)
    echo -e "$org\tLibrary\tDefaultOrganizationView\t$total_cv_metadata\t$total_cv_DB"
  done >> $TEMP_FILE
 
  cat $TEMP_FILE | column -t  >> $REPORT_FILE 
  rm -f $TEMP_FILE
  echo -e "\n\n\n" >> $REPORT_FILE
  
}

adding_timestamp()
{
  echo "###############################################" >> $REPORT_FILE
  echo "Repositories Creation date and Last Update time" >> $REPORT_FILE
  echo "###############################################" >> $REPORT_FILE
  echo "" >> $REPORT_FILE


  # just to keep the format and space in the beggining of the line
  IFS=$'\n'
  for line in $(cat $STD_FILE)
  do
    check=$(echo $line | grep -E '(.*\)$)' | wc -l)
    if [ $check -eq 1 ]; then
      break
    else
      echo $line >> $REPORT_FILE
    fi
  done

  unset IFS

  echo -e "\n------ End of Report ------" >> $REPORT_FILE
}

final()
{
  echo "Please, upload to Red Hat the files in a sequence:"
  echo "  - $STD_FILE"
  echo "  - $REPORT_FILE"
}


# Execute All in sequence

 main
 basic_info
 detailed_repo_info
 general_cv_info
 adding_timestamp
 final
