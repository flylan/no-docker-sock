#!/bin/bash
# shellcheck shell=bash
set -Eeuo pipefail

source ../func.sh

if ! has_command docker-compose; then
  echo 'Please install docker-compose manually'
  exit 1
fi

docker-compose up -d
docker exec -it test_buildah /bin/bash