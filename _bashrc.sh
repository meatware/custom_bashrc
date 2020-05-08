# .bashrc

#####################################################
## profile slow .bashrc code - part 1/2
## https://www.rosipov.com/blog/profiling-slow-bashrc/s
#PS4='+ $(date "+%s.%N")\011 '
#exec 3>&2 2>/tmp/bashstart.$$.log
#set -x
#####################################################

# Source global definitions
# Enable programmable completion features for ubuntu.
if [ -f /etc/profile.d/bash_completion.sh ]; then
    source /etc/profile.d/bash_completion.sh
fi

# Set default editor
export VISUAL=vim
EDITOR=vim
export EDITOR

# Enable bash shell options
shopt -s cdspell # corrects minor cd spelling errors
shopt -s cdable_vars # non-dir args supplied to cd are assumned to be vars
shopt -s no_empty_cmd_completion
shopt -s cmdhist # save all lines of a multiple-line command in the same history entry

# Color for manpages in less makes manpages a little easier to read
export LESS_TERMCAP_mb=$'\E[38;5;221m'
export LESS_TERMCAP_md=$'\E[38;5;221m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;35m'

# Load composure first, so we support function metadata
. "${HOME}/custom_bashrc/modules/composure.sh"
# support 'plumbing' metadata
cite _about _param _example _group _author _version

# Source bashrc assets
. "${HOME}/custom_bashrc/theme_settings.sh"
. "${HOME}/custom_bashrc/bashrc_assets/_bash_colour_functions.sh"
. "${HOME}/custom_bashrc/bashrc_assets/_bash_helper_functions.sh"
. "${HOME}/custom_bashrc/bashrc_assets/_bash_colour_defs.sh"
. "${HOME}/custom_bashrc/bashrc_assets/_bash_git_functions.sh"
. "${HOME}/custom_bashrc/bashrc_assets/_bash_aliases.sh"

# source aliases
. "${HOME}/custom_bashrc/aliases/docker_aliases.sh"
. "${HOME}/custom_bashrc/aliases/docker-compose_aliases.sh"
. "${HOME}/custom_bashrc/aliases/git_aliases.sh"
. "${HOME}/custom_bashrc/aliases/apt_aliases.sh"
. "${HOME}/custom_bashrc/aliases/curl_aliases.sh"
. "${HOME}/custom_bashrc/aliases/vagrant_aliases.sh"

# source completions
. "${HOME}/custom_bashrc/completions/docker_completion.sh"
. "${HOME}/custom_bashrc/completions/docker-compose_completion.sh"
#. "${HOME}/custom_bashrc/completions/docker-machine_completion.sh"
. "${HOME}/custom_bashrc/completions/awscli_completion.sh"
#. "${HOME}/custom_bashrc/completions/consul_completion.sh"
. "${HOME}/custom_bashrc/completions/export_completion.sh"
#. "${HOME}/custom_bashrc/completions/gcloud_completion.sh"
. "${HOME}/custom_bashrc/completions/git_completion.sh"
#. "${HOME}/custom_bashrc/completions/kubectl_completion.sh"
. "${HOME}/custom_bashrc/completions/makefile_completion.sh"
. "${HOME}/custom_bashrc/completions/pip_completion.sh"
. "${HOME}/custom_bashrc/completions/pip3_completion.sh"
#. "${HOME}/custom_bashrc/completions/pipenv_completion.sh"
. "${HOME}/custom_bashrc/completions/ssh_completion.sh"
. "${HOME}/custom_bashrc/completions/terraform_completion.sh"
#. "${HOME}/custom_bashrc/completions/vagrant_completion.sh"
#. "${HOME}/custom_bashrc/completions/virtualbox_completion.sh"

# source bash modules
. "${HOME}/custom_bashrc/modules/aws_module.sh"
. "${HOME}/custom_bashrc/modules/base_module.sh"
. "${HOME}/custom_bashrc/modules/docker_module.sh"
# . "${HOME}/custom_bashrc/modules/docker-machine_module.sh"
. "${HOME}/custom_bashrc/modules/docker-compose_module.sh"
. "${HOME}/custom_bashrc/modules/git_module.sh"
. "${HOME}/custom_bashrc/modules/explain_module.sh"
. "${HOME}/custom_bashrc/modules/extract_module.sh"
. "${HOME}/custom_bashrc/modules/history_module.sh"
#. "${HOME}/custom_bashrc/modules/nginx_module.sh"
. "${HOME}/custom_bashrc/modules/ssh_module.sh"
. "${HOME}/custom_bashrc/modules/sshagent_module.sh"
# load this module last - horrendous for performance
#. "${HOME}/custom_bashrc/modules/alias-completion_module.sh"



#################################################################
#################################################################
#################################################################
### last command timer
# function timer_start {
#     timer=${timer:-$SECONDS}
# }

# function timer_stop {
#     timer_show=$(($SECONDS - $timer))
#     unset timer
# }

#trap 'timer_start' DEBUG


#################################################################
#################################################################
#################################################################
# check relation of our local .bashrc to remote basshrc at https://github.com/meatware/custom_bashrc
#check_new_bashrc_vers

# User specific aliases and functions

# https://superuser.com/questions/288714/bash-autocomplete-like-zsh
bind 'set show-all-if-ambiguous on'
bind 'set colored-completion-prefix on'
#bind 'TAB:menu-complete'

FULL_PROMPT="$SET_FULL_PROMPT" # set in theme_settings.sh
if [ "$FULL_PROMPT" == "yes" ]; then

    function prompt_command() {
        ###################################################
        ### identify success/fail status of last command
        ### DO NOT MOVE THIS VARIABLE: must be first!
        local last_status="$?"
        ###################################################
        ###################################################
        #timer_stop
        ###################################################
        ###################################################
        ### Setup if else for different color themes
        PATH_COL_VAR="${SET_PATHCOL_VAR}"
        PATH_COL="${SET_PATHCOL}"
        THEME_VAR="${SET_THEME_VAR}"
        BARCOL="${SET_BARCOL}"
        TXTCOL="${SET_TXTCOL}"

        ###################################################
        ### Turn the prompt symbol red if the user is root
        ### root stuff
        if [[ $(id -u) -eq 0 ]]; then
            ### root color
            BARCOL="${MORANGE}"
            TXTCOL="${RED}"
            local ENDBIT="#"
        else
            local ENDBIT="$"
        fi # root bit

        ###################################################
        ### Display virtual environment notification  if applicable
        ## disable the default virtualenv prompt change
        export VIRTUAL_ENV_DISABLE_PROMPT=1

        VIRTENV=$(virtualenv_info)

        ### Display ssh variable notification in prompt if applicable
        SSH_SESSION=$(ssh_info)

        ### Display AWS profile if applicable
        CURR_AWS_PROFILE=$(aws_info)

        # Display tty no in prompt
        local TTY_VAR=`tty 2> /dev/null | awk -F/ '{nlast = NF 0;print $nlast$NF": "}'`

        ###################################################
        ### set color coded error string for prompt depending on success of last command
        if [[ $last_status == 0 ]]; then
            ERRPROMPT="\[\033[1;1;32m\]${ENDBIT} "
        else
            ERRPROMPT='\[\033[1;1;31m\]X '
        fi

        ###################################################
        ### set titlebar
        local TITLEBAR=`pwdtail`
        echo -ne '\033]2;'${TTY_VAR}${TITLEBAR}'\007'

## move out of indented tabs to avoid formatting horror (still in function)
PS1="${debian_chroot:+($debian_chroot)}\n\
${BARCOL}┌──\
${TXTCOL}[\u]\
${BARCOL}─\
${TXTCOL}[\H]\
$(parse_git)\
${VIRTENV}${SSH_SESSION}${CURR_AWS_PROFILE}
${BARCOL}│${DKGRAY}${TTY_VAR}${PATH_COL}> \w \
\n${BARCOL}└──\
${TXTCOL}`date +"%H:%M"`\
${BARCOL}─\
${ERRPROMPT}${TERGREEN}"
}

else
    function prompt_command() {
        PATH_COL_VAR="${SET_PATHCOL_VAR}"
        PATH_COL="${SET_PATHCOL}"
        THEME_VAR="${SET_THEME_VAR}"
        BARCOL="${SET_BARCOL}"
        TXTCOL="${SET_TXTCOL}"

        ###################################################
        ### Display virtual environment notification  if applicable
        ## disable the default virtualenv prompt change
        export VIRTUAL_ENV_DISABLE_PROMPT=1

        VIRTENV=$(virtualenv_min_info)

        ### Display ssh variable notification in prompt if applicable
        SSH_SESSION=$(ssh_info)

        ### get parent directory
        FULL_PATH=$(pwd)
        LAST2_DIR=${FULL_PATH#"${FULL_PATH%/*/*}/"}

        #DRIVE_PATH=$(df . | tail -1 | awk '{print $1}')
        #DRIVE_ID=${DRIVE_PATH#"${DRIVE_PATH%/*}/"}

## move out of indented tabs to avoid formatting horror (still in function)
PS1="${debian_chroot:+($debian_chroot)}\n\
${BARCOL}\
${TXTCOL}(`date +"%H:%M"`)${BARCOL}─${TXTCOL}(\u@\H)\
${BARCOL}─${GRAY}(${GRAY}${LAST2_DIR})\
$(parse_git_minimal)\n\
${BARCOL}\
${RED}${VIRTENV} \[\033[1;1;32m\]$ ${TERGREEN}"
}

fi

# history guide: https://www.digitalocean.com/community/tutorials/how-to-use-bash-history-commands-and-expansions-on-a-linux-vps
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend

# switch to export history to all terminals & EXPORT PROMPT
exp_history="no"
if [ "$exp_history" = "yes" ]; then
    # To do this correctly, we need to do a bit of a hack. We need
    # to append to the history file immediately with history -a,
    # clear the current history in our session with history -c,
    # and then read the history file that we’ve appended to,
    # back into our session history with history -r.
    PROMPT_COMMAND="prompt_command; history -a; history -c; history -r"
else
    #trap 'timer_start' DEBUG
    #timer_stop;
    PROMPT_COMMAND="prompt_command"
fi


#################################################################
#################################################################
#################################################################
#if [ "$TERM" != "dumb" ]; then
#    [ -e "${HOME}/.dircolors" ] && DIR_COLORS="${HOME}/.dircolors"
#    [ -e "$DIR_COLORS" ] || DIR_COLORS=""
#    eval "`dircolors -b $DIR_COLORS`"
#fi
#####





#####################################################
## profile slow .bashrc code - part 2/2
#set +x
#exec 2>&3 3>&-
#####################################################

# guides
# http://jakemccrary.com/blog/2015/05/03/put-the-last-commands-run-time-in-your-bash-prompt/
# see https://github.com/nojhan/liquidprompt
# http://www.askapache.com/linux/bash-power-prompt/
# see http://brettterpstra.com/2009/11/17/my-new-favorite-bash-prompt/
# generate hostname color depending on name:
# https://serverfault.com/questions/221108/different-color-prompts-for-different-machines-when-using-terminal-ssh
# https://www.maketecheasier.com/more-useful-and-interesting-bash-prompts/ # megafancyprompt
# https://gist.github.com/zachbrowne/8bc414c9f30192067831fafebd14255c
# https://www.tldp.org/LDP/abs/html/sample-bashrc.html
# https://itsfoss.com/shutter-edit-button-disabled/

# Entry for directory autojump: https://github.com/wting/autojump
# needs to be at end
[[ -s ${HOME}/.autojump/etc/profile.d/autojump.sh ]] && source ${HOME}/.autojump/etc/profile.d/autojump.sh

# replace autojump with fasd
# https://www.tecmint.com/fasd-quick-access-to-linux-files-and-directories/
#eval "$(fasd --init auto)"


export GOPATH=$HOME/work
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



