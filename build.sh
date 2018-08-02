#!/bin/bash

# build docker image

#VERSION=`date +'%Y%m%d%H%M%S'`

IMAGENAME="$JOB_NAME"

docker build -t $IMAGENAME .

# push docker image

docker tag $IMAGENAME 192.168.174.132:5000/$IMAGENAME 
docker rmi $IMAGENAME
docker push 192.168.174.132:5000/$IMAGENAME
