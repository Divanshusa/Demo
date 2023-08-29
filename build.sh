#!/bin/bash
docker ps -a | grep web
if [ "$?" -eq 0 ]
then
docker stop web
docker rm web
else 
docker build -t img2 .
docker run -dit -p 8081:80 --name web img2
fi
