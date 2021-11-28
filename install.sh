#!/usr/bin/env bash

set -e -o pipefail

cleanup () {
    rm -rf /tmp/docker-utils
}

trap cleanup EXIT
trap cleanup ERR

echo "Install docker-utils ..."

git clone --depth 1 https://github.com/oxess/docker-utils.git /tmp/docker-utils

pushd /tmp/docker-utils
mkdir -p /usr/local/bin

cp volume-import /usr/local/bin/docker-volume-import
cp volume-export /usr/local/bin/docker-volume-export

chmod +x /usr/local/bin/docker*