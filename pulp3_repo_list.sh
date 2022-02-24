#!/bin/bash

path_of_repos=$(echo "select base_path from core_distribution" | su - postgres -c "psql pulpcore" | sed '1,2d' | grep -v ^$ | grep -v ^\( | sed -e 's/^ //g')

for b in $path_of_repos
do
  echo - $b
  echo "select core_d.base_path,cpa.relative_path,ca.file from core_distribution as core_d RIGHT JOIN core_publication as cp ON core_d.publication_id=cp.pulp_id LEFT JOIN core_publishedartifact as cpa ON cp.pulp_id=cpa.publication_id LEFT JOIN core_contentartifact as core_ca ON core_ca.pulp_id=cpa.content_artifact_id LEFT JOIN core_artifact as ca ON ca.pulp_id=core_ca.artifact_id where core_d.base_path = '$b' order by core_d.base_path" | su - postgres -c "psql pulpcore"
  echo
  echo
  echo
  echo
done
