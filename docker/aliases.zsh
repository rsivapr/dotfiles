alias d='docker $*'
alias d-c='docker-compose $*'

# Images

alias di='docker images'
alias drmi='docker rmi'
alias dbu='docker build'
alias drmi-all='docker rmi $* $(docker images -a -q)'
alias drmi-dang='docker rmi $* $(docker images -q -f "dangling=true")'

# Containers

alias dps='docker ps'
alias dpsl='docker ps -l $*'
alias drm='docker rm'
alias dexec='docker exec'
alias dlog='docker logs'
alias dip='docker inspect --format "{{ .NetworkSettings.IPAddress }}" $*'
alias dstop-all='docker stop $* $(docker ps -q -f "status=running")'
alias drm-stopped='docker rm $* $(docker ps -q -f "status=exited")'
alias drmv-stopped='docker rm -v $* $(docker ps -q -f "status=exited")'
alias drm-all='docker rm $* $(docker ps -a -q)'
alias drmv-all='docker rm -v $* $(docker ps -a -q)'

# Volumes

alias dvls='docker volume ls $*'
alias dvrm-all='docker volume rm $(docker volume ls -q)'
alias dvrm-dang='docker volume rm $(docker volume ls -q -f "dangling=true")'

d-ip() {
  docker inspect --format "{{ .NetworkSettings.IPAddress }}" $1
}

dkb() {
  docker build -t="$1" .
}

d-grep() {
  docker ps | grep $@ | grep -v ^CONTAINER
}

d-kill-pattern() {
  docker ps \
  | grep $@ \
  | grep -v ^CONTAINER \
  | awk '{print $1}' \
  | xargs -rI % bash -c 'echo $(docker kill %; echo "killed!");'
}

d-pid() {
  docker inspect --format "{{ .State.Pid }}" $1
}

d-purge() {
  docker rm $(docker ps -a -q);
}

d-stats() {
  docker ps -q | xargs docker stats
}

d-stop() {
  # Stop all running containers
  docker stop $(docker ps -a -q);
}

d-zsh() {
  local TAG=$1
  docker run -v /tmp:/host_tmp:rw -i -t $TAG /bin/zsh
}

dps-monitor() {
  while true
  do
    clear
    docker ps | cut -c -$(tput cols)
    sleep 0.5
  done
}
