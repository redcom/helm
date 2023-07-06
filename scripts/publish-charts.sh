#!/bin/sh
#
# Package Helm chart

set -e
source ./scripts/.env

pages_branch_name=$PAGES_BRANCH_NAME
repo_owner=$REPO_OWNER
repo_name=$REPO_NAME
charts_source_folder="./helm-charts"

# check if build folder is not empty
[ "$(ls -A ./build)" ] && echo "Build folder is not empty" || echo "Build folder is empty"


