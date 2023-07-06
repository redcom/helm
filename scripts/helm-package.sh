#!/bin/sh
#
# Package Helm chart

set -e
source ./scripts/.env

pages_branch_name=$PAGES_BRANCH_NAME
repo_owner=$REPO_OWNER
repo_name=$REPO_NAME
charts_source_folder="./helm-charts"

# iterate over all top folders in helm-charts and package them
for i in $(ls $charts_source_folder)
do
  helm lint ./helm-charts/$i
  helm package ./helm-charts/$i -d ./docs
done

# index the repo
helm repo index --url https://$repo_owner.github.io/$pages_branch_name/  ./docs

# check if index file was created
[[ $(wc -l ./docs/index.yaml | awk '{print $1}') -gt 3 ]] && echo "Index file is not empty" || echo "Index file is empty"
