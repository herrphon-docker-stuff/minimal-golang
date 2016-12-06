#!/bin/bash -xe

docker build -t foo-builder -f Dockerfile.build .

# build main
ID=$(docker create -t foo-builder)
docker cp main.go ${ID}:/app/
docker start ${ID}
docker cp ${ID}:/app/main .
docker rm ${ID}
 
docker build -t foo .


