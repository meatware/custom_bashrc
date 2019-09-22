# colour dir colours
alias mkdir='mkdir -p'


# ls commands
#export CLICOLOR=1
#export LS_COLORS='no=00:fi=00:di=00;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:*.xml=00;31:'
alias ls='ls -aFh --color=always'
alias qs='/bin/ls' # fast ls with no options (many files in a directory)
alias la='ls -Alh' # show hidden files
alias lao='ls -ld .?*' # show ONLY hidden files
alias lx='ls -lXBh' # sort by extension
alias lk='ls -lSrh' # sort by size
alias lc='ls -lcrh' # sort by change time
alias lu='ls -lurh' # sort by access time
alias lr='ls -lRh' # recursive ls
alias lt='ls -ltrh' # sort by date
alias lm='ls -alh | less' # pipe through 'less'
alias lw='ls -xAh' # wide listing format
alias ll='ls -lth --group-directories-first' # long listing format
alias labc='ls -lap' #alphabetical sort
alias lf="ls -l | egrep -v '^d'" # files only
alias ldir="ls -l | egrep '^d'" # directories only

# cd commands
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# other commands
alias grep='grep --color=auto'

alias quick-ssh='ssh -Y -C -c blowfish-cbc,arcfour username@yourhost.com'
alias edbash='gedit ~/.bashrc ~/custom_bashrc/bashrc_assets/*.sh &'
alias F5='source ~/.bashrc'


https://gist.github.com/zachbrowne/8bc414c9f30192067831fafebd14255c

function mkcd() {
    #Make a folder and go into it
    mkdir -p $1; cd $1
}

alias his='history'