#!/bin/sh
DOCKER_EXIST=$(docker ps -a -f name=labs --format "{{.ID}}")
if [ -z $DOCKER_EXIST ]; then
  echo "Creating new container"
  docker run -it --name labs -v ~/.ssh:/root/.ssh debian bash
else
  echo "Starting labs container"
  docker start -i labs
fi
