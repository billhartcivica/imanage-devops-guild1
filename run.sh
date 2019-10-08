#!/bin/sh
# Version number is obtained from the text file
export NGINXVER=`cat VERSION.TXT`
# The version number is substituted into the docker-compose file.
rm -rf docker-compose.yml; envsubst < "docker-compose.tmp" > "docker-compose.yml";
# The image is brought up via the docker-compose file.
docker-compose up -d
