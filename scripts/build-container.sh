#!/usr/bin/env bash

pushd $(git rev-parse --show-toplevel) || exit 1

docker build . -t zconger/hawkscan:spinnaker-0.1
docker push zconger/hawkscan:spinnaker-0.1

popd || exit 1
