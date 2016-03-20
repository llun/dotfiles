#!/bin/sh
DOCKER_EXIST=$(docker ps -a -f name=ride --format "{{.ID}}")
if [ -z $DOCKER_EXIST ]; then
  echo "Creating new container"
  docker run -d --name ride -p 20280:3000 llun/ride
elif [ $(docker ps -f name=ride --format "{{.ID}}") ]; then
  echo "Entering container"
  docker exec -it ride bash
else
  echo "Starting labs container"
  docker start -i ride 
fi
