#!/bin/sh
if [ ! -f ./node-v5.9.0-linux-x64.tar.xz ]; then
  curl -O https://nodejs.org/dist/v5.9.0/node-v5.9.0-linux-x64.tar.xz
fi
docker build -t llun/tester:latest .
