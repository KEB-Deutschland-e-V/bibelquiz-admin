#!/bin/bash

docker stop bibelquiz-admin || :

docker rm bibelquiz-admin || :

docker run \
--name bibelquiz-admin \
--volume /opt/bibelquiz/admin/app:/app \
--env SECRET_KEY_BASE=motor \
--env DATABASE_URL: postgresql://motor:motor@localhost:5432/motor \
--restart unless-stopped \
--network="host" \
-d motoradmin/motoradmin:latest
