#!/bin/bash
# shellcheck shell=bash
set -Eeuo pipefail

source ../func.sh

if ! has_command docker; then
  echo 'Please install docker manually'
  exit 1
fi

image_name="test_buildah"

cd ../docker-compose
docker build -t $image_name .
docker run \
-it \
--rm \
--privileged \
--device /dev/fuse:rw \
--security-opt seccomp=unconfined \
--security-opt apparmor=unconfined \
$image_name \
/bin/bash