#!/usr/bin/env bash

# Create a repository directory to let HawkScan know where to find config files
mkdir -p "${REPO_DIR}"

# Clone our project repository to the repo directory
git clone "${REPO_URL}" "${REPO_DIR}"

shawk
