docker_get_name_from_image() {
  echo $@ | sed "s/\//./"
}
 
docker_remove_exists_name() {
  local name=`docker_get_name_from_image $2`
  local exists=`sudo docker ps -a | grep $name | awk '{ print $1 }'`
  if [ -n "$exists" ]; then
    docker rm $name > /dev/null 2>&1
  fi
 
  echo $name
}
 
docker_is_running() {
  local name=`docker_get_name_from_image $@`
  local running=`sudo docker ps | grep "\s$name\s"`
  if [ -n "$running" ]; then
    echo "$name is running"
  fi
}
 
docker_go() {
  if [ "$#" -gt 1 ]; then
    local name=`docker_remove_exists_name $@`
    docker run -t -i --name $name --net "host" $2 bash --login
  else
    echo "Required image name" 1>&2
  fi
}
 
docker_daemon() {
  if [ "$#" -gt 1 ]; then
    local running=`docker_is_running $2`
    if [ -z "$running" ]; then
      local name=`docker_remove_exists_name $@`
      docker run -d --net "host" --name $name $2
 
      echo "Wait for docker starting ssh service."
      sleep 2
      docker_ssh $name
    else
      local name=`docker_get_name_from_image $2`
      echo "$name is already running"
    fi
  else
    echo "Required image name" 1>&2
  fi
}
 
docker_ssh() {
  if [ "$#" -gt 0 ]; then
    local name=$@
    echo "Connecting to $name"
    read -p "Username: " username
    if [ -z "$username" ]; then
      echo "Invalid username, you can connect to docker later with 'docker ssh container_name' command"
    else
      echo "Logging in as $username"
      local port=`sudo docker port $name 22 | awk -F ":" '{ print $2 }'`
      if [ -n "$port" ]; then
        ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -l $username -p $port localhost
      else
        ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -l $username -p 2022 localhost
      fi
    fi
  else
    echo "Required container name" 1>&2
  fi
}
 
docker_clean() {
  local containers=`sudo docker ps -a | grep Exited | awk '{ print $1 }'`
  if [ -n "$containers" ]; then
    docker rm $containers
  fi
  docker rmi `sudo docker images --no-trunc -a | egrep "<none>" | awk '{ print \$3 }'`
}
 
docker_attach() {
  if [ "$#" -eq 1 ];
  then
    docker $@
  else
    local process=`docker ps | grep -m 1 $2`
    if [ -z "$process" ]; then 
      docker $@
    else
      local id=`echo "$process" | awk "{ print \$1 }"`
      docker attach $id
    fi
  fi
}
 
docker_command() {
  case "$1" in
    "go")
      docker_go $@
      ;;
    "daemon")
      docker_daemon $@
      ;;
    "ssh")
      docker_ssh $@
      ;;
    "clean")
      docker_clean
      ;;
    "list")
      docker images | egrep "(^REPOSITORY|^llun|^gimmie).*"
      ;;
    "attach")
      docker_attach $@
      ;;
    "running")
      local name=$2
      docker_is_running $name
      ;;
    *)
      docker $@
      ;;
  esac
}
 
alias docker="docker_command"
