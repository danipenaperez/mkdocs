#!/bin/bash
IMAGE_NAME=danipenaperez/mkdocs
echo "building Locally Image"
docker build -t $IMAGE_NAME .

echo "Succesfully create danipenaperez/mkdocs image"
echo "Run in this way: "