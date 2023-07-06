#!/bin/sh
#
# Package Helm chart

set -e
source ./scripts/.env

pages_branch_name=$PAGES_BRANCH_NAME
repo_owner=$REPO_OWNER
repo_name=$REPO_NAME

# check if build folder is not empty
[ "$(ls -A ./docs/index.yaml)" ] && echo "Build folder is not empty" || echo "Build folder is empty"

# checkout the heml release branch
# Get the current branch name and save it in a variable
current_branch=$(git rev-parse --abbrev-ref HEAD)

# hide local changes in current branch
git stash

git checkout $pages_branch_name
git pull origin $pages_branch_name
git add ./docs
git commit -m "Update Helm charts"
git push origin $pages_branch_name

# Switching back to the saved branch: $current_branch"
git checkout "$current_branch"

# unstash local changes
git stash pop
