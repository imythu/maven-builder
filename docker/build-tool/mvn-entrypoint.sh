#!/bin/bash
useradd -s /bin/bash -u $USER_ID -c "" -M user
usermod -a -G root user
export HOME=/home/user
mkdir -p /project /home/user/.m2 $HOME/.config/
chown -R $USER_ID /home/user /project
chmod +x /project/docker/build-tool/gosu-amd64
/project/docker/build-tool/gosu-amd64 user mvn clean package $MVN_PARAMS -DskipTests=true -s /project/settings.xml
