#!/bin/sh
DOCKER_EXIST=$(docker ps -a -f name=vpn --format "{{.ID}}")
if [ -z $DOCKER_EXIST ]; then
  echo "Creating new container"
  docker run -it --privileged --net=host --name vpn llun/vpn bash
elif [ $(docker ps -f name=vpn --format "{{.ID}}") ]; then
  echo "Entering container"
  docker exec -it vpn bash
else
  echo "Starting vpn container"
  docker start -i vpn
fi
