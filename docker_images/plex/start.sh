#!/bin/sh
docker run -d --net=host --name=plex -v /mnt/zeus/data:/mnt/data llun/plex:1.0
