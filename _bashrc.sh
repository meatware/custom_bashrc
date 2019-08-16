# .bashrc

#if [ -f ~/.bashrc ]; then
#   . ~/.bashrc
#fi

# Source global definitions
# Enable programmable completion features.
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

# Source bashrc assets
. $HOME/custom_bashrc/bashrc_assets/_bash_colour_functions.sh
. $HOME/custom_bashrc/bashrc_assets/_bash_helper_functions.sh
. $HOME/custom_bashrc/bashrc_assets/_bash_colour_defs.sh
. $HOME/custom_bashrc/bashrc_assets/_bash_git_functions.sh
. $HOME/custom_bashrc/bashrc_assets/_bash_aliases.sh



#################################################################
#################################################################
#################################################################
#####################
# guides
# http://jakemccrary.com/blog/2015/05/03/put-the-last-commands-run-time-in-your-bash-prompt/
# see https://github.com/nojhan/liquidprompt
# http://www.askapache.com/linux/bash-power-prompt/
# history guide: https://www.digitalocean.com/community/tutorials/how-to-use-bash-history-commands-and-expansions-on-a-linux-vps
# see http://brettterpstra.com/2009/11/17/my-new-favorite-bash-prompt/
# generate hostname color depending on name:
# https://serverfault.com/questions/221108/different-color-prompts-for-different-machines-when-using-terminal-ssh
# https://www.maketecheasier.com/more-useful-and-interesting-bash-prompts/ # megafancyprompt


##################################
### last command timer
function timer_start {
    timer=${timer:-$SECONDS}
}

function timer_stop {
    timer_show=$(($SECONDS - $timer))
    unset timer
}

#trap 'timer_start' DEBUG


#################################################################
#################################################################
#################################################################

# User specific aliases and functions
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend

color_prompt=yes
if [ "$color_prompt" = yes ]; then

    function prompt_command() {
        ###################################################
        ### identify success/fail status of last command
        ### DO NOT MOVE THIS COMMAND: must be first!
        local last_status=$?
        ###################################################
        ###################################################
        #timer_stop
        ###################################################

        local TITLEBAR=`pwdtail`
        local TTY_VAR=`tty 2> /dev/null | awk -F/ '{nlast = NF 0;print $nlast$NF": "}'`

        ###################################################
        ### Setup if else for different color themes

        ### set theme var
        THEME_VAR=8

        ### Set Path col variable
        PATH_COL_VAR=1
        PATH_COL=${PATH_COLS_ARR[${PATH_COL_VAR}]}

        # lookup array from _bash_colour_defs
        BARCOL=${BARCOL_ARR[${THEME_VAR}]}
        TXTCOL=${TXTCOL_ARR[${THEME_VAR}]}

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
        ### set virtual environment if applicable

        # disable the default virtualenv prompt change
        export VIRTUAL_ENV_DISABLE_PROMPT=1

        VIRTENV=$(virtualenv_info)


        ###################################################
        ### set color coded error string for prompt depending on success of last command
        if [[ $last_status == "0" ]]; then
            ERRPROMPT="\[\033[1;1;32m\]${ENDBIT} "
        else
            ERRPROMPT='\[\033[1;1;31m\]X '
        fi

        ###################################################
        ### set titlebar
        echo -ne '\033]2;'${TTY_VAR}${TITLEBAR}'\007'

## move out of tabs to avoid formatting horror (still in function)
PS1="${debian_chroot:+($debian_chroot)}\n\
${YELLOW}${BARCOL}┌──\
${TXTCOL}[\u]\
${BARCOL}──\
${TXTCOL}[\H]\
${BARCOL}──\
${TXTCOL}[speed: ${timer_show}s]\
$(parse_git)\
${VIRTENV}
${BARCOL}│${DKGRAY}${TTY_VAR}${PATH_COL}> \w \
\n${BARCOL}└──\
${TXTCOL}`date +"%H:%M"`\
${BARCOL}──\
${ERRPROMPT}${TERGREEN}"
}

else
    prompt_command() {
        PS1="[\d \t \u@\h:\w ] $ "
    }

fi

# switch to export history to all terminals & EXPORT PROMPT
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
exp_history="no"
if [ "$exp_history" = "yes" ]; then
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
#    [ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
#    [ -e "$DIR_COLORS" ] || DIR_COLORS=""
#    eval "`dircolors -b $DIR_COLORS`"
#fi
#####


export VISUAL=vim
EDITOR=vim
export EDITOR

[[ -s /home/bsgt/.autojump/etc/profile.d/autojump.sh ]] && source /home/bsgt/.autojump/etc/profile.d/autojump.sh
