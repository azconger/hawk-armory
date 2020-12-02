#!/usr/bin/env bash

#cp /config/stackhawk.yml ./

mkdir -p ${REPO_DIR}
cd "${REPO_DIR}"
git clone ${REPO_URL} repo
cd repo

shawk
