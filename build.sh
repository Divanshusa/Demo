#!/bin/bash
docker ps -a | grep NGX
if [ "$?" -eq 0 ]
then
docker stop NGX
docker rm NGX
docker build -t img3 .
docker run -dit -p 8082:80 --name NGX img3
else 
docker build -t imG3 .
docker run -dit -p 8082:80 --name NGX img3
fi
