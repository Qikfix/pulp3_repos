# satellite_tricks

- pulp3_repo_list.sh

This script will help you to track all the files in a specific content view. Below you can see an example.

```
# ./pulp3_repo_list.sh 
Please, upload to Red Hat the below files:
  - /var/log/pulp3_content_info.log
  - /var/log/pulp3_report_info.log
```

The file `/var/log/pulp3_content_info.log` will be your complete dataset with all the information that we need from Pulp3, basically
 - Organization
 - Lifecycle
 - Content View/Composite Content View
 - File
 - Artifact

Below we can see an example
```
# head -n10 /var/log/pulp3_content_info.log
- ACME/Library/cv_tools/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os
                                     base_path                                     |                                         relative_path                                          |                                    file                                    
-----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------
 ACME/Library/cv_tools/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/repomd.xml                                                                            | artifact/6d/7df7014df5f79d5f3c7a2885079710e4e75a88a2a0286eb7c5a158f3c54e43
 ACME/Library/cv_tools/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/e0cf5275a73750214957dff0a09e605c2c4c15d7a383b424b1a11f874d3460a3-comps.xml            | artifact/e0/cf5275a73750214957dff0a09e605c2c4c15d7a383b424b1a11f874d3460a3
 ACME/Library/cv_tools/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/5f0ad662c80d94a3cc74de92c253c319d4cc734514edcf4df9b7243a5ae7ed42-primary.sqlite.bz2   | artifact/5f/0ad662c80d94a3cc74de92c253c319d4cc734514edcf4df9b7243a5ae7ed42
 ACME/Library/cv_tools/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/91ab954533689d8fd63a4bdf142bdb3ff4c1c274761c07784852b979fa1fea2c-primary.xml.gz       | artifact/91/ab954533689d8fd63a4bdf142bdb3ff4c1c274761c07784852b979fa1fea2c
 ACME/Library/cv_tools/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/777b4da4d2a078c9231e6d6d21f2a65174781054e1c6c89477d01682aa5850ec-other.xml.gz         | artifact/77/7b4da4d2a078c9231e6d6d21f2a65174781054e1c6c89477d01682aa5850ec
 ACME/Library/cv_tools/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/9bb65a72d49884e60b7058e72c35c834bf6ced4b2124b10544a0a3b47cc335b6-filelists.sqlite.bz2 | artifact/9b/b65a72d49884e60b7058e72c35c834bf6ced4b2124b10544a0a3b47cc335b6
 ACME/Library/cv_tools/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/79957d44031c9fa689002a97c00bb1c8da8096a382ffc39ab810d39da8c254a9-filelists.xml.gz     | artifact/79/957d44031c9fa689002a97c00bb1c8da8096a382ffc39ab810d39da8c254a9
```

And the file `/var/log/pulp3_report_info.log` will be a summary of the pulp3 data. Another example below.

```
# cat /var/log/pulp3_report_info.log
#######################
Basic Pulp3 Information
#######################

# Organization(s):
------------------
ACME

# LifeCycle(s):
---------------
Library , prod

# Content View(s):
------------------
cv_rhel8tools_zabbix , cv_tools , cv_tools_6_7 , cv_tools_7_8

...

#######################################
Presentation of Individual Repositories
#######################################

Repo_Path                                                                              RPM_Count_in_Metadata   RPM_Count_in_DB
---------                                                                              ---------------------   ---------------
**ACME/Library/cv_tools/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os    62                      62
**ACME/prod/cv_tools/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os       62                      62
**ACME/Library/cv_rhel8tools_zabbix/custom/zabbix/zabbix                               12                      12

...

#####################################################
Presentation of Content View / Composite Content View
#####################################################

Organization  LifeCycle  Content_View  		RPM_Count_in_Metadata  RPM_Count_in_DB
------------  ---------  ------------  		---------------------  ---------------
ACME          Library    cv_rhel8tools_zabbix   22                     22
ACME          Library    cv_tools	        62                     62
...

------ End of Report ------
```

Anything else that you believe to be interesting, please, don't hesitate to request via Issue! :-)

Here you can see the [changelog](https://github.com/waldirio/satellite_tricks/blob/main/Changelog.md)

Thank you and I hope this helps.

Waldirio
