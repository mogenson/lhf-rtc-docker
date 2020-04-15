#!/bin/sh

NAME=lhf_rtc

docker build -t $NAME .
ID=$(docker run -p 1111:1111 -p 3333:3333 -p 4444:4444 -d $NAME)
echo "Container ID: $ID"
sleep 3
docker logs $ID
