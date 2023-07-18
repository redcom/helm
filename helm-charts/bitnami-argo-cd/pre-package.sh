#!/bin/bash
# Description: This script is used to update the values.yaml file with the correct values for the redis password

# check if yq is installed
# if not, install it
[ ! -x "$(command -v yq)" ] && echo "yq not found, installing..." && echo "Please install it"
[[ ! -f values.yaml.upstream ]] && cp values.yaml values.yaml.upstream
yq eval '.config.secret.redisPassword = ""' values.yaml > updated_values.yaml
yq eval '.redis.auth.existingSecretPasswordKey = "redisPassword"' updated_values.yaml > values.yaml
yq eval '.redis.auth.existingSecret = "argocd-secret"' values.yaml > updated_values.yaml

mv updated_values.yaml values.yaml

