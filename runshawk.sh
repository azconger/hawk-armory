#!/usr/bin/env bash

#cp /config/stackhawk.yml ./

# Andrew's contribution:
if [ -z "$ARTIFACT_SERVICE" ]; then
  echo "ARTIFACT_SERVICE not set, defaulting to http://spin-clouddriver:7002"
  ARTIFACT_SERVICE="http://spin-clouddriver:7002"
fi
if [ -z "$ARTIFACT_JSON" ]; then
  echo "ARTIFACT_JSON not set, use SpEL: #toJson(artifact)"
  exit 1
fi
echo "ARTIFACT JQ:\n$(echo ${ARTIFACT_JSON} | jq -r .)"

echo "Retrieving git/repo from clouddriver"
curl -v -X PUT -o artifact.tar.gz -H "Content-Type: application/json" ${ARTIFACT_SERVICE}/artifacts/fetch -d ${ARTIFACT_JSON}
mkdir -p ${REPO_DIR}
tar -zxf artifact.tar.gz -C ${REPO_DIR}
cd "${REPO_DIR}"

shawk
