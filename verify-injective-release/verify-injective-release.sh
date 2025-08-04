#!/bin/bash
# Obtain the value for VERSION_TAG from https://github.com/InjectiveLabs/injective-chain-releases/releases
# and replace the value below

VERSION_TAG="v1.16.1-1754161770"

curl -JLO https://github.com/InjectiveLabs/injective-chain-releases/releases/download/${VERSION_TAG}/linux-amd64.zip
unzip linux-amd64.zip

docker buildx build --platform=linux/x86_64 -t injective-release-verify .
docker run --platform=linux/x86_64 injective-release-verify
