#!/bin/bash
docker run -it \
    --rm \
    --name elasticsearch \
    -m 4G \
    -p 9200:9200 \
    -p 9300:9300 \
    -e "discovery.type=single-node" \
    -e "xpack.security.enabled=false" \
    elasticsearch:8.4.3
