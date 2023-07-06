#!/bin/bash

# Set the required variables

source ./scripts/.env
repo_owner=$REPO_OWNER
repo_name=$REPO_NAME
pages_branch_name=$PAGES_BRANCH_NAME
access_token=$PAT_HELM_GITHUB_TOKEN


# Create a new readme file
create_readme() {
  cat <<EOF > ./docs/readme.md
## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```
  helm repo add $repo_name https://$repo_owner.github.io/$pages_branch_name
```

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo $repo_name` to see the charts.

To install the chart:

```
    helm install <<chart_name>> $repo_name/<<chart_name>> --version <<version>> --namespace <<namespace>> --create-namespace
```

To uninstall the chart:

```
    helm delete <<chart_name>> --namespace <<namespace>>
```
EOF
}

# Create a new branch
create_branch() {
  git checkout --orphan $pages_branch_name
  git rm -rf ./docs
  mkdir docs
  echo -e “User-Agent: *\nDisallow: /” > ./docs/robots.txt
  git add ./docs/robots.txt
  create_readme
  git add ./docs/readme.md
  git commit -m "Initial commit with robots.txt"
  git push -u origin $pages_branch_name
  git checkout main
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
        "path": "/docs"
      }
    }'
}

# Call the function to create a new branch
create_branch

# Call the function to enable GitHub Pages
enable_pages

