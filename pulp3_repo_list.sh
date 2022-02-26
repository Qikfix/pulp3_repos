#!/bin/bash

# 
# License ......: GPL
# Developer ....: Waldirio M Pinheiro <waldirio@gmail.com> | <waldirio@redhat.com>
# Date .........: 02/24/2022
# Purpose ......: To extract the information from Postgres regarding to pulp3 (repos, content views, packages)
# 

LINE="-------------------------------------------------------------------------------"
STD_FILE="/var/log/pulp3_content_info.log"
REPORT_FILE="/var/log/pulp3_report_info.log"
> $STD_FILE
> $REPORT_FILE

main()
{
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


  echo "# Organization(s)" >> $REPORT_FILE
  echo "$org_name" >> $REPORT_FILE
  echo >> $REPORT_FILE
  echo "# LifeCycle(s)" >> $REPORT_FILE
  echo "$lifecycle_name" >> $REPORT_FILE
  echo >> $REPORT_FILE
  echo "# Content View(s)" >> $REPORT_FILE
  echo "$cv_name" >> $REPORT_FILE
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
  for b in $repo_list
  do
    echo - $b >> $REPORT_FILE

    PULP_PATH="/var/lib/pulp/media"

    number_of_packages=$(cat $STD_FILE | grep "$b" | grep .rpm | wc -l)
    repomd_artifact=$(cat $STD_FILE | grep "$b" | grep repomd.xml | awk '{print $NF}')
    primary_file=$(cat $PULP_PATH/$repomd_artifact | grep primary.xml | cut -d\" -f2)
    primary_file_artifact=$(cat $STD_FILE | grep "$b" | grep "$primary_file" | awk '{print $NF}')
    number_of_packages_metadata=$(zcat $PULP_PATH/$primary_file_artifact | grep -o "packages=\"".* | cut -d\" -f2)

    echo "Number of RPM in the Metadata ..: $number_of_packages_metadata" >> $REPORT_FILE
    echo "Number of RPM in the DB ........: $number_of_packages" >> $REPORT_FILE

    echo >> $REPORT_FILE

  done
  echo >> $REPORT_FILE
  echo >> $REPORT_FILE

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
 
  for org in $org_name
  do
    for lfc in $lifecycle_name
    do
      for cv in $cv_name
      do
        full_filter="$org/$lfc/$cv/"
        count_entry=$(grep -A2 "$full_filter" $REPORT_FILE | wc -l)

        if [ $count_entry -ne 0 ]; then
          echo "Organization ...................: $org" >> $REPORT_FILE
          echo "LifeCycle ......................: $lfc" >> $REPORT_FILE
          echo "Content View ...................: $cv" >> $REPORT_FILE
          total_cv_metadata=$(grep -A2 "$full_filter" $REPORT_FILE | grep Metadata | awk '{print $NF}' | paste -s -d+ | bc)
          total_cv_DB=$(grep -A2 "$full_filter" $REPORT_FILE | grep DB | awk '{print $NF}' | paste -s -d+ | bc)
          echo "Number of RPM in the Metadata ..: $total_cv_metadata" >> $REPORT_FILE
          echo "Number of RPM in the DB ........: $total_cv_DB" >> $REPORT_FILE
          echo "---" >> $REPORT_FILE
        fi

      done
    done
  done
}



# Main

main
basic_info
detailed_repo_info
general_cv_info