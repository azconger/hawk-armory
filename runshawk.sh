#!/usr/bin/env bash

# Create a repository directory
mkdir -p ${REPO_DIR}
git clone ${REPO_URL} ${REPO_DIR}
cd "${REPO_DIR}"

shawk
