#!/usr/bin/env bash

set -e

echo "Starting Star Rapture Dedicated Server..."

docker run -d \
    --restart unless-stopped \
    --name starrupture \
    --stop-timeout 30 \
    -p 7777:7777/udp \
    -p 7777:7777/tcp \
    -p 27015:27015/udp \
    --env-file /star-rupture/env \
    -v ./server-files:/home/steam/server-files
    indifferentbroccoli/starrupture-server-docker

# end of line