alias quick-ssh='ssh -Y -C -c blowfish-cbc,arcfour username@yourhost.com'
alias qs='/bin/ls'
alias ll='/bin/ls -lht --color'
alias ll='/bin/ls -lhta --color'
alias edbash='gedit ~/.bashrc ~/custom_bashrc/bashrc_assets/*.sh &'
alias F5='source ~/.bashrc'
alias grep='grep --color=auto'

https://gist.github.com/zachbrowne/8bc414c9f30192067831fafebd14255c

function mkcd() {
    #Make a folder and go into it
    mkdir -p $1; cd $1
}

alias his='history'

#############################################
############## Git aliases ##################
#############################################

# git diff
# https://coderwall.com/p/pa5whg/git-side-by-side-diff-in-terminal
# alias gdiff='git difftool -y -x "sdiff -w $COLUMNS" | less'

# alias gs='git status '
# alias ga='git add '
# alias gb='git branch '
# alias gc='git commit'
# alias gchk='git checkout'
# alias gdiffh='git diff HEAD'
# alias gpllo='git pull origin'
# alias gpllocb='git pull origin $(git rev-parse --abbrev-ref HEAD)'
# alias gp='git push'
# alias gpo='git push origin'
# alias gpocb='git push origin $(git rev-parse --abbrev-ref HEAD)'
# alias gd='git diff'
# alias go='git checkout '
# alias gk='gitk --all&'
# alias gx='gitx --all'