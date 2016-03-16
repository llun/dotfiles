#!/bin/sh
if [ ! -f dropbox.tgz ]; then
  curl -L https://www.dropbox.com/download?plat=lnx.x86_64 -o dropbox.tgz
fi
docker build -t llun/dropbox:latest .
