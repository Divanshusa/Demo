#!/bin/bash
docker build -t img2 .
docker run -dit -p 8081:80 --name web img2

