#!/bin/sh
DOCKER_EXIST=$(docker ps -a -f name=labs --format "{{.ID}}")
if [ -z $DOCKER_EXIST ]; then
  echo "Creating new container"
  docker run -it --name labs -p 20180:3000 -v ~/.ssh:/root/.ssh llun/labs bash
else
  echo "Starting labs container"
  docker start -i labs
fi
