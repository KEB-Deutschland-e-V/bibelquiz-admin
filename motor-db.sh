#!/bin/bash

docker stop bibelquiz-admin-db || :

docker rm bibelquiz-admin-db || :

docker run \
--name bibelquiz-admin-db \
--volume /opt/bibelquiz/admin/postgres:/var/lib/postgresql/data \
--env POSTGRES_USER=motor \
--env POSTGRES_PASSWORD=motor \
--env POSTGRES_DB=motor \
--restart unless-stopped \
--network="host" \
-d postgres:13.4
