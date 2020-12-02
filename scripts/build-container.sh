#!/usr/bin/env bash

# First arg is version, or default
VERSION=${1:-0.3}
IMAGE="zconger/hawkscan"
TAG="spinnaker-${VERSION}"

pushd $(git rev-parse --show-toplevel) || exit 1

docker build . -t "${IMAGE}:${TAG}"
docker tag "${IMAGE}:${TAG}" "${IMAGE}:spinnaker"
docker tag "${IMAGE}:${TAG}" "${IMAGE}:latest"

docker push "${IMAGE}:${TAG}"
docker push "${IMAGE}:spinnaker"
docker push "${IMAGE}:latest"

popd || exit 1
