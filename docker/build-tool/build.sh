#!/bin/sh
docker run --rm -e USER_ID=$(id -u $USER) -v "$(pwd):/project" \
-v "$(echo ~)/.m2:/home/user/.m2" \
-e MVN_PARAMS="$*" \
--entrypoint /bin/bash \
-w /project maven:3.8.4-jdk-11-slim /project/docker/build-tool/mvn-entrypoint.sh
