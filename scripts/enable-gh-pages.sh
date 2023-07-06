#!/bin/bash

# Set the required variables
source ./scripts/.env
repo_owner=$REPO_OWNER
repo_name=$REPO_NAME
pages_branch_name=$PAGES_BRANCH_NAME
access_token=$PAT_HELM_GITHUB_TOKEN

# Enable GitHub Pages
enable_pages() {
  curl -X POST \
    -H "Authorization: token $access_token" \
    -H "Accept: application/vnd.github.switcheroo-preview+json" \
    "https://api.github.com/repos/$repo_owner/$repo_name/pages" \
    -d '{
      "source": {
        "branch": "helm",
        "path": "/docs"
      }
    }'
}

# Call the function to enable GitHub Pages
enable_pages

