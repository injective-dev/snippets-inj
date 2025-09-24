#!/bin/bash
# Obtain the value for VERSION_TAG from https://github.com/InjectiveLabs/injective-chain-releases/releases
# and replace the value below

VERSION_TAG="v1.16.4-1758323548"

set -e

ZIP_URL="https://github.com/InjectiveLabs/injective-chain-releases/releases/download/${VERSION_TAG}/linux-amd64.zip"
ZIP_FILE="injective-${VERSION_TAG}-linux-amd64.zip"
DOCKER_IMG_NAME="injective-release-verify-${VERSION_TAG}"
curl \
  --location \
  --output "${ZIP_FILE}" \
   "${ZIP_URL}"
rm -f libwasmvm.x86_64.so injectived peggo
unzip "${ZIP_FILE}"

docker buildx build --platform=linux/x86_64 -t "${DOCKER_IMG_NAME}" .
docker run --platform=linux/x86_64 "${DOCKER_IMG_NAME}"
