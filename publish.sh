#!/bin/bash
IMAGE_NAME=danipenaperez/mkdocs
docker tag $IMAGE_NAME $IMAGE_NAME:latest
# publish to remote
docker push $IMAGE_NAME:latest

echo "Succesfully published $IMAGE_NAME $IMAGE_NAME:latest on docker hub"