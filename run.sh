#!/bin/bash
docker-compose up -d
docker exec `docker ps | grep sftp-s3 | cut -f 1 -d " "` /init.sh
