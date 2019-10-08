#!/bin/sh

# The version number for the application is taken from the text file.
export NGINXVER=`cat VERSION.TXT`
# The build file for the Docker container is set with the version number.
rm -rf Dockerfile; envsubst < "Dockerfile.template" > "Dockerfile"
# The build is run using the version number from the text file.
docker build -t nginxtest:$NGINXVER .

