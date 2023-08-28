#!/bin/bash
docker build -t img2 .
docker run -dit -p 8081:80 --name web img2
docker exec -it web /bin/bash
/usr/sbin/httpd
exit
