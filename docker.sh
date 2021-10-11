#!/bin/bash

docker build -t bibelquiz/admin:latest . 

docker stop bibelquiz-admin || :

docker rm bibelquiz-admin || :

docker run \
--name bibelquiz-admin \
--restart unless-stopped \
--publish "${BQ_ADMIN_PORT}":8081 \
-d bibelquiz/admin:latest