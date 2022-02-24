# satellite_tricks

- pulp3_repo_list.sh

This script will help you to track all the files in a specific content view. Below you can see an example.

```
# ./pulp3_repo_list.sh
- ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os
                                      base_path                                       |                                         relative_path                                          |                                    file                                    
--------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | repodata/repomd.xml                                                                            | artifact/8d/b8b6608a78d442566e62cc6a8c9534a2f723fe417c7d66f94ac4c62f8e6054
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | repodata/ec454684836b9d909d8f031b9b467a9d911b82286d0ff11d31146ad26f9cd50e-primary.xml.gz       | artifact/ec/454684836b9d909d8f031b9b467a9d911b82286d0ff11d31146ad26f9cd50e
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | repodata/12fd50d182336b46a580bab7a50bd443b9dda9aa697cc5dba1b9ac696b1ccc70-primary.sqlite.bz2   | artifact/12/fd50d182336b46a580bab7a50bd443b9dda9aa697cc5dba1b9ac696b1ccc70
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | repodata/e8c94e228f16cbca2e9a5ed0015b066aa0684d9bfe40426c11ff33851e3f9d19-comps.xml            | artifact/e8/c94e228f16cbca2e9a5ed0015b066aa0684d9bfe40426c11ff33851e3f9d19
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | repodata/2c667530ce68950bcf77c79b68cea4365d0eac7bf4ea6eee314c21ec0b1b675d-other.xml.gz         | artifact/2c/667530ce68950bcf77c79b68cea4365d0eac7bf4ea6eee314c21ec0b1b675d
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | repodata/a81f89fb06ca973befc41274e7d2496c4d16b0a12d84a6fa57095cb2e314f06f-filelists.sqlite.bz2 | artifact/a8/1f89fb06ca973befc41274e7d2496c4d16b0a12d84a6fa57095cb2e314f06f
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | repodata/8f6752f9fe958471b9669a5f92cfcfd32248059ba18f8ee4d12fbb57330d8398-filelists.xml.gz     | artifact/8f/6752f9fe958471b9669a5f92cfcfd32248059ba18f8ee4d12fbb57330d8398
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | repodata/b5da8bf75b9105a3d37cb71efa1b6d1eb7a96d435eab38bf4183631dd45b23eb-other.sqlite.bz2     | artifact/b5/da8bf75b9105a3d37cb71efa1b6d1eb7a96d435eab38bf4183631dd45b23eb
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | repodata/91759e468af97b1f3affd9ede257560c1aba611a4566c39d8602bdac350cd0ed-updateinfo.xml.gz    | artifact/91/759e468af97b1f3affd9ede257560c1aba611a4566c39d8602bdac350cd0ed
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | Packages/p/puppet-agent-6.22.1-1.el6sat.x86_64.rpm                                             | 
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | Packages/p/python-gofer-proton-2.11.9-1.el6sat.noarch.rpm                                      | 
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | Packages/p/python-gofer-2.11.9-1.el6sat.noarch.rpm                                             | 
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | Packages/k/katello-host-tools-3.5.4-1.el6sat.noarch.rpm                                        | 
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | Packages/k/katello-agent-3.5.4-1.el6sat.noarch.rpm                                             | 
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | Packages/p/python-pulp-agent-lib-2.21.5-2.el6sat.noarch.rpm                                    | 
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | Packages/k/katello-host-tools-fact-plugin-3.5.4-1.el6sat.noarch.rpm                            | 
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | Packages/r/rubygem-json-1.4.6-2.el6.x86_64.rpm                                                 | 
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | Packages/p/python-isodate-0.5.0-4.el6sat.noarch.rpm                                            | 
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | Packages/p/python-pulp-rpm-common-2.21.5-2.el6sat.noarch.rpm                                   | 
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | Packages/r/rubygem-foreman_scap_client-0.5.0-1.el6sat.noarch.rpm                               | 
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | Packages/p/python-qpid-proton-0.28.0-3.el6_10.x86_64.rpm                                       | 
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | Packages/p/pulp-rpm-handlers-2.21.5-2.el6sat.noarch.rpm                                        | 
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | Packages/q/qpid-proton-c-0.28.0-3.el6_10.x86_64.rpm                                            | 
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | Packages/g/gofer-2.11.9-1.el6sat.noarch.rpm                                                    | 
 ACME/Library/cv_tools_6_7/content/els/rhel/server/6/6Server/x86_64/sat-tools/6.10/os | Packages/p/python-pulp-common-2.21.5-2.el6sat.noarch.rpm                                       | 
(25 rows)





- ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os
                                       base_path                                       |                                         relative_path                                          |                                    file                                    
---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/repomd.xml                                                                            | artifact/6d/7df7014df5f79d5f3c7a2885079710e4e75a88a2a0286eb7c5a158f3c54e43
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/e0cf5275a73750214957dff0a09e605c2c4c15d7a383b424b1a11f874d3460a3-comps.xml            | artifact/e0/cf5275a73750214957dff0a09e605c2c4c15d7a383b424b1a11f874d3460a3
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/5f0ad662c80d94a3cc74de92c253c319d4cc734514edcf4df9b7243a5ae7ed42-primary.sqlite.bz2   | artifact/5f/0ad662c80d94a3cc74de92c253c319d4cc734514edcf4df9b7243a5ae7ed42
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/91ab954533689d8fd63a4bdf142bdb3ff4c1c274761c07784852b979fa1fea2c-primary.xml.gz       | artifact/91/ab954533689d8fd63a4bdf142bdb3ff4c1c274761c07784852b979fa1fea2c
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/777b4da4d2a078c9231e6d6d21f2a65174781054e1c6c89477d01682aa5850ec-other.xml.gz         | artifact/77/7b4da4d2a078c9231e6d6d21f2a65174781054e1c6c89477d01682aa5850ec
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/9bb65a72d49884e60b7058e72c35c834bf6ced4b2124b10544a0a3b47cc335b6-filelists.sqlite.bz2 | artifact/9b/b65a72d49884e60b7058e72c35c834bf6ced4b2124b10544a0a3b47cc335b6
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/79957d44031c9fa689002a97c00bb1c8da8096a382ffc39ab810d39da8c254a9-filelists.xml.gz     | artifact/79/957d44031c9fa689002a97c00bb1c8da8096a382ffc39ab810d39da8c254a9
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/76104c55f53cbeeb63940486a7432f4568ae1e262c0bc42d240b6a105ef7657a-other.sqlite.bz2     | artifact/76/104c55f53cbeeb63940486a7432f4568ae1e262c0bc42d240b6a105ef7657a
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/31c5679d033a474cceb1106d00401cfa511944281716a38667876fffe9d75350-updateinfo.xml.gz    | artifact/31/c5679d033a474cceb1106d00401cfa511944281716a38667876fffe9d75350
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/f/foreman-cli-2.5.2.17-2.el7sat.noarch.rpm                                            | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/g/gofer-2.12.5-7.el7sat.noarch.rpm                                                    | artifact/5d/0a9c011560efb8f892a913409e61de1397ca7e13df6d38f43f1dd51364b81c
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/k/katello-agent-3.5.4-1.el7sat.noarch.rpm                                             | artifact/33/40cb25558cdc483a49ecc907f411cd235c0701046bb61618909e6781f3740c
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/k/katello-host-tools-fact-plugin-3.5.4-1.el7sat.noarch.rpm                            | artifact/a3/ac378cf722a4b4073258203a513e9daa6fb2e6219881b22cfde5265c1532f9
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/k/katello-host-tools-tracer-3.5.4-1.el7sat.noarch.rpm                                 | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/k/katello-host-tools-3.5.4-1.el7sat.noarch.rpm                                        | artifact/cd/9fde97b28192a01df845beb8a49b16fea6d85e306328bbc4b871461151d8a8
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/p/puppet-agent-6.22.1-1.el7sat.x86_64.rpm                                             | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/p/python-argcomplete-1.7.0-2.el7sat.noarch.rpm                                        | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/p/python-gofer-proton-2.12.5-7.el7sat.noarch.rpm                                      | artifact/7b/0da69fc384c4acad4c4a8de55b0e9f20a532cdea685fd27aa9df61d9e5c363
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/p/python-gofer-2.12.5-7.el7sat.noarch.rpm                                             | artifact/30/86a9af9da9da28aac3addcd31a9314011a63e5724ea606bfa1a86028785afd
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/p/python-qpid-proton-0.33.0-6.el7_9.x86_64.rpm                                        | artifact/f2/5b591842e926c3eec593e9c47c81d4120f93c5dbec99edb2b54ff53fa721fd
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/p/python2-beautifulsoup4-4.6.3-2.el7sat.noarch.rpm                                    | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/p/python2-future-0.16.0-11.el7sat.noarch.rpm                                          | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/p/python2-psutil-5.7.2-2.el7sat.x86_64.rpm                                            | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/p/python2-tracer-0.7.3-1.el7sat.noarch.rpm                                            | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/p/python3-pulp_manifest-3.0.0-1.el7pc.noarch.rpm                                      | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/q/qpid-proton-c-0.33.0-6.el7_9.x86_64.rpm                                             | artifact/70/ea8398f77909f579a4a59d88c05fb4b8730cd56955a4a500b2cbcb04bd8969
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/r/rubygem-foreman_scap_client-0.5.0-1.el7sat.noarch.rpm                               | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/s/satellite-cli-6.10.0-3.el7sat.noarch.rpm                                            | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/s/satellite-cli-6.10.1-2.el7sat.noarch.rpm                                            | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-amazing_print-1.1.0-2.el7sat.noarch.rpm                                 | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-apipie-bindings-0.4.0-2.el7sat.noarch.rpm                               | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-clamp-1.1.2-7.el7sat.noarch.rpm                                         | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-domain_name-0.5.20160310-5.el7sat.noarch.rpm                            | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-fast_gettext-1.4.1-5.el7sat.noarch.rpm                                  | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-gettext-3.1.4-11.el7sat.noarch.rpm                                      | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-hammer_cli-2.5.1-1.el7sat.noarch.rpm                                    | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-hammer_cli_foreman-2.5.1.1-1.el7sat.noarch.rpm                          | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-hammer_cli_foreman_admin-1.1.0-1.el7sat.noarch.rpm                      | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-hammer_cli_foreman_ansible-0.3.4-1.el7sat.noarch.rpm                    | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-hammer_cli_foreman_azure_rm-0.2.1-1.el7sat.noarch.rpm                   | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-hammer_cli_foreman_bootdisk-0.3.0-2.el7sat.noarch.rpm                   | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-hammer_cli_foreman_discovery-1.0.2-2.el7sat.noarch.rpm                  | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-hammer_cli_foreman_openscap-0.1.12-2.el7sat.noarch.rpm                  | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-hammer_cli_foreman_remote_execution-0.2.1-2.el7sat.noarch.rpm           | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-hammer_cli_foreman_tasks-0.0.15-2.el7sat.noarch.rpm                     | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-hammer_cli_foreman_templates-0.2.0-2.el7sat.noarch.rpm                  | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-hammer_cli_foreman_virt_who_configure-0.0.8-1.el7sat.noarch.rpm         | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-hammer_cli_foreman_webhooks-0.0.1-2.el7sat.noarch.rpm                   | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-hammer_cli_katello-1.1.2.2-1.el7sat.noarch.rpm                          | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-hammer_cli_katello-1.1.2.3-1.el7sat.noarch.rpm                          | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-hashie-3.6.0-3.el7sat.noarch.rpm                                        | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-highline-2.0.3-2.el7sat.noarch.rpm                                      | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-http-cookie-1.0.2-5.1.el7sat.noarch.rpm                                 | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-jwt-2.2.2-2.el7sat.noarch.rpm                                           | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-little-plugger-1.1.4-3.el7sat.noarch.rpm                                | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-locale-2.0.9-15.el7sat.noarch.rpm                                       | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-logging-2.3.0-2.el7sat.noarch.rpm                                       | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-mime-types-data-3.2018.0812-5.el7sat.noarch.rpm                         | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-mime-types-3.3.1-2.el7sat.noarch.rpm                                    | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-multi_json-1.14.1-3.el7sat.noarch.rpm                                   | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-netrc-0.11.0-6.el7sat.noarch.rpm                                        | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-oauth-0.5.4-5.el7sat.noarch.rpm                                         | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-powerbar-2.0.1-3.el7sat.noarch.rpm                                      | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-rest-client-2.0.2-4.el7sat.noarch.rpm                                   | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-text-1.3.0-8.el7sat.noarch.rpm                                          | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-unf-0.1.3-9.el7sat.noarch.rpm                                           | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-unf_ext-0.0.7.2-4.el7sat.x86_64.rpm                                     | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-unicode-display_width-1.7.0-2.el7sat.noarch.rpm                         | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-rubygem-unicode-0.4.4.4-4.el7sat.x86_64.rpm                                     | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tfm-runtime-7.0-1.el7sat.x86_64.rpm                                                 | 
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/t/tracer-common-0.7.3-1.el7sat.noarch.rpm                                             | 
(71 rows)
```

NOte. Above we can see this is related to the CV `cv_tools_6_7` and also some files were already downloaded, because of that, we can see some artifacts on the right side.
```
...
 ACME/Library/cv_tools_6_7/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | Packages/p/python-gofer-proton-2.12.5-7.el7sat.noarch.rpm                                      | artifact/7b/0da69fc384c4acad4c4a8de55b0e9f20a532cdea685fd27aa9df61d9e5c363
...
```

For this script, it's not necessary to pass any parameter, just execute it and if you want, redirect the output to a log file.


```
...
# ./pulp3_repo_list.sh 
- ACME/Library/cv_tools/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os
                                     base_path                                     |                                         relative_path                                          |                                    file                                    
-----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------
 ACME/Library/cv_tools/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/repomd.xml                                                                            | artifact/6d/7df7014df5f79d5f3c7a2885079710e4e75a88a2a0286eb7c5a158f3c54e43
 ACME/Library/cv_tools/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/e0cf5275a73750214957dff0a09e605c2c4c15d7a383b424b1a11f874d3460a3-comps.xml            | artifact/e0/cf5275a73750214957dff0a09e605c2c4c15d7a383b424b1a11f874d3460a3
 ACME/Library/cv_tools/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/5f0ad662c80d94a3cc74de92c253c319d4cc734514edcf4df9b7243a5ae7ed42-primary.sqlite.bz2   | artifact/5f/0ad662c80d94a3cc74de92c253c319d4cc734514edcf4df9b7243a5ae7ed42
...
- ACME/prod/cv_tools/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os
                                   base_path                                    |                                         relative_path                                          |                                    file                                    
--------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------
 ACME/prod/cv_tools/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/repomd.xml                                                                            | artifact/6d/7df7014df5f79d5f3c7a2885079710e4e75a88a2a0286eb7c5a158f3c54e43
 ACME/prod/cv_tools/content/dist/rhel/server/7/7Server/x86_64/sat-tools/6.10/os | repodata/e0cf5275a73750214957dff0a09e605c2c4c15d7a383b424b1a11f874d3460a3-comps.xml            | artifact/e0/cf5275a73750214957dff0a09e605c2c4c15d7a383b424b1a11f874d3460a3
...
- ACME/Library/cv_rhel8tools_zabbix/custom/zabbix/zabbix
                       base_path                        |                                         relative_path                                          |                                    file                                    
--------------------------------------------------------+------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------
 ACME/Library/cv_rhel8tools_zabbix/custom/zabbix/zabbix | repodata/repomd.xml                                                                            | artifact/f6/28bdd9a18d0a50ec1ba71e1fe8018c2635c4207f53364b0ee90f459b11c260
 ACME/Library/cv_rhel8tools_zabbix/custom/zabbix/zabbix | repodata/1e2dc0abc42c959e219c2dfe9895d281688ad999e3fd062a8a35eb62a8e07955-filelists.xml.gz     | artifact/1e/2dc0abc42c959e219c2dfe9895d281688ad999e3fd062a8a35eb62a8e07955
...
```

I hope this helps.
Waldirio
