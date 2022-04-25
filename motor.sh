#!/bin/bash

docker stop bibelquiz-admin || :

docker rm bibelquiz-admin || :

docker run \
--name bibelquiz-admin \
--volume /opt/bibelquiz/admin/app:/app \
--env SECRET_KEY_BASE=e59d57183e994efcf9bfcf3f7f326f48d0248706db9551694d03ec034a209850dfd9604c27dacea9a52ea74ccf959e94dc8ce8748af56767661e7ded28d56b4c \
--env DATABASE_URL=postgresql://motor:motor@localhost:5432/motor \
--restart unless-stopped \
--network="host" \
-d motoradmin/motoradmin:latest
