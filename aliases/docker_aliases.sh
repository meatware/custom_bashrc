cite 'about-alias'
about-alias 'docker abbreviations'

###################################################
# from bash-it
alias dk='docker'
alias dklc='docker ps -l'  # List last Docker container
alias dklcid='docker ps -l -q'  # List last Docker container ID
alias dklcip='docker inspect -f "{{.NetworkSettings.IPAddress}}" $(docker ps -l -q)'  # Get IP of last Docker container
alias dkps='docker ps'  # List running Docker containers
alias dkpsa='docker ps -a'  # List all Docker containers
alias dki='docker images'  # List Docker images
alias dkrmac='docker rm $(docker ps -a -q)'  # Delete all Docker containers

case $OSTYPE in
  darwin*|*bsd*|*BSD*)
    alias dkrmui='docker images -q -f dangling=true | xargs docker rmi'  # Delete all untagged Docker images
    ;;
  *)
    alias dkrmui='docker images -q -f dangling=true | xargs -r docker rmi'  # Delete all untagged Docker images
    ;;
esac

if [ ! -z "$(command ls "${HOME}"/custom_bashrc/modules/docker_module.sh 2>/dev/null | head -1)" ]; then
# Function aliases from docker plugin:
    alias dkrmlc='docker-remove-most-recent-container'  # Delete most recent (i.e., last) Docker container
    alias dkrmall='docker-remove-stale-assets'  # Delete all untagged images and exited containers
    alias dkrmli='docker-remove-most-recent-image'  # Delete most recent (i.e., last) Docker image
    alias dkrmi='docker-remove-images'  # Delete images for supplied IDs or all if no IDs are passed as arguments
    alias dkideps='docker-image-dependencies'  # Output a graph of image dependencies using Graphiz
    alias dkre='docker-runtime-environment'  # List environmental variables of the supplied image ID
fi
alias dkelc='docker exec -it $(dklcid) bash --login' # Enter last container (works with Docker 1.3 and above)
alias dkrmflast='docker rm -f $(dklcid)'
alias dkbash='dkelc'
alias dkex='docker exec -it ' # Useful to run any commands into container without leaving host
alias dkri='docker run --rm -i '
alias dkrit='docker run --rm -it '

# Added more recent cleanup options from newer docker versions
alias dkip='docker image prune -a -f'
alias dkvp='docker volume prune -f'
alias dksp='docker system prune -a -f'
alias dkpruneall='docker system prune -a -f --all --volumes'

# and from bash-it
#############################################
############ Docker aliases #################
#############################################
#https://hackernoon.com/handy-docker-aliases-4bd85089a3b8

alias dm='docker-machine'
alias dmx='docker-machine ssh'
#alias dk='docker'
#alias dki='docker images'
alias dks='docker service'
alias dkrm='docker rm'
alias dkl='docker logs'
alias dklf='docker logs -f'
alias dkflush='docker rm $(docker ps --no-trunc -aq)'
alias dkflush2='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
alias dkt='docker stats --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.NetIO}}"'
#alias dkps="docker ps --format '{{.ID}} ~ {{.Names}} ~ {{.Status}} ~ {{.Image}}'"
alias dkps="docker ps"

dkln() {
  docker logs -f $(docker ps | grep $1 | awk '{print $1}')
}

dkp() {
    if [ ! -f .dockerignore ]; then
        echo "Warning, .dockerignore file is missing."
        read -p "Proceed anyway?"
    fi

    if [ ! -f package.json ]; then
        echo "Warning, package.json file is missing."
        read -p "Are you in the right directory?"
    fi

  VERSION=$(cat package.json | jq .version | sed 's/\"//g')
  NAME=$(cat package.json | jq .name | sed 's/\"//g')
  LABEL="$1/$NAME:$VERSION"

  docker build --build-arg NPM_TOKEN=${NPM_TOKEN} -t $LABEL .

  read -p "Press enter to publish"
  docker push $LABEL
}

dkpnc() {
    if [ ! -f .dockerignore ]; then
        echo "Warning, .dockerignore file is missing."
        read -p "Proceed anyway?"
    fi

    if [ ! -f package.json ]; then
        echo "Warning, package.json file is missing."
        read -p "Are you in the right directory?"
    fi

  VERSION=$(cat package.json | jq .version | sed 's/\"//g')
  NAME=$(cat package.json | jq .name | sed 's/\"//g')
  LABEL="$1/$NAME:$VERSION"

  docker build --build-arg NPM_TOKEN=${NPM_TOKEN} --no-cache=true -t $LABEL .
  read -p "Press enter to publish"
  docker push $LABEL
}

dkpl() {
    if [ ! -f .dockerignore ]; then
        echo "Warning, .dockerignore file is missing."
        read -p "Proceed anyway?"
    fi

    if [ ! -f package.json ]; then
        echo "Warning, package.json file is missing."
        read -p "Are you in the right directory?"
    fi

  VERSION=$(cat package.json | jq .version | sed 's/\"//g')
  NAME=$(cat package.json | jq .name | sed 's/\"//g')
  LATEST="$1/$NAME:latest"

  docker build --build-arg NPM_TOKEN=${NPM_TOKEN} --no-cache=true -t $LATEST .
  read -p "Press enter to publish"
  docker push $LATEST
}

dkclean() {
    docker rm $(docker ps --all -q -f status=exited)
    docker volume rm $(docker volume ls -qf dangling=true)
}


dktop() {
    docker stats --format "table {{.Container}}\t{{.Name}}\t{{.CPUPerc}}  {{.MemPerc}}\t{{.NetIO}}\t{{.BlockIO}}"
}

dkstats() {
    if [ $# -eq 0 ]
        then docker stats --no-stream;
        else docker stats --no-stream | grep $1;
    fi
}

dke() {
    docker exec -it $1 /bin/sh
}

dkrun() {
    docker run -it $1 /bin/sh
}

dkexe() {
    docker exec -it $1 $2
}

dkreboot() {
    osascript -e 'quit app "Docker"'
    countdown 2
    open -a Docker
    echo "Restarting Docker engine"
    countdown 120
}

dkstate() {
    docker inspect $1 | jq .[0].State
}

dksb() {
    docker service scale $1=0
    sleep 2
    docker service scale $1=$2
}

mongo() {
    mongoLabel=$(docker ps | grep mongo | awk '{print $NF}')
    docker exec -it $mongoLabel mongo "$@"
}

redis() {
    redisLabel=$(docker ps | grep redis | awk '{print $NF}')
    docker exec -it $redisLabel redis-cli
}

