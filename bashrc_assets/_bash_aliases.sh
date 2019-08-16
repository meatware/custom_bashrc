alias quick-ssh='ssh -Y -C -c blowfish-cbc,arcfour username@yourhost.com'
alias qs='/bin/ls'
alias ll='/bin/ls -lht --color'
alias ll='/bin/ls -lhta --color'
alias edbash='gedit ~/.bashrc &'
alias F5='source ~/.bashrc'

function mkcd() {
    #Make a folder and go into it
    mkdir -p $1; cd $1
}

alias his='history'

#############################################
############## Git aliases ##################
#############################################

# git diff
https://coderwall.com/p/pa5whg/git-side-by-side-diff-in-terminal
alias gdiff='git difftool -y -x "sdiff -w $COLUMNS" | less'

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gchk='git checkout'
alias gdiffh='git diff HEAD'
alias gpllo='git pull origin'
alias gpllocb='git pull origin $(git rev-parse --abbrev-ref HEAD)'
alias gp='git push'
alias gpo='git push origin'
alias gpocb='git push origin $(git rev-parse --abbrev-ref HEAD)'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'


#############################################
############ Docker aliases #################
#############################################
#https://hackernoon.com/handy-docker-aliases-4bd85089a3b8

alias dm='docker-machine'
alias dmx='docker-machine ssh'
alias dk='docker'
alias dki='docker images'
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

dkprune() {
    docker system prune -af
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