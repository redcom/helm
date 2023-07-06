#!/bin/bash

# Set the required variables

source .env
repo_owner="redcom"
repo_name="helm"
pages_branch_name="helm"

echo $PAT_HELM_GITHUB_TOKEN
access_token=$PAT_HELM_GITHUB_TOKEN


# Create a new branch
create_branch() {
  git checkout --orphan $pages_branch_name
  git rm -rf .
  git commit --allow-empty -m "Initial commit"
  git push origin $pages_branch_name
}

# Enable GitHub Pages
enable_pages() {
  curl -X POST \
    -H "Authorization: token $access_token" \
    -H "Accept: application/vnd.github.switcheroo-preview+json" \
    "https://api.github.com/repos/$repo_owner/$repo_name/pages" \
    -d '{
      "source": {
        "branch": "helm",
        "path": "/"
      }
    }'
}

# Call the function to create a new branch
create_branch

# Call the function to enable GitHub Pages
enable_pages

