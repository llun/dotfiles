#!/bin/sh
docker run -d --name dropbox -p 17500:17500 -v /mnt/zeus/data/sync:/opt/dropbox/data llun/dropbox:1.0
