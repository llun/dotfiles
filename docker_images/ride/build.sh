#!/bin/sh
if [ ! -f ./ride ]; then
  git clone git@github.com:ideaboxes/ride.git
fi
if [ ! -f node-v5.9.0-linux-x64.tar.xz ]; then
  curl -O https://nodejs.org/dist/v5.9.0/node-v5.9.0-linux-x64.tar.xz
fi
cd ride && npm install && npm run build && cd ..
docker build -t llun/ride:latest .
