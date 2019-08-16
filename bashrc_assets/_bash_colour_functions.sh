function colsw(){
    ## switches theme color set by $THEME_VAR vals

    local NEWCOL=${1}

    ### If not an integer - default to theme val 0
    REX=^[0-9]*$
    if [[ "$NEWCOL" =~ $REX ]]; then
        true # pass TODO: figure out annoying regex not
    else
        echo "$NEWCOL is not a valid no for THEME_VAR"
        NEWCOL=0
    fi

    ### check if integer is between 0 and number of max theme array index
    if [ "$NEWCOL" -ge 0 -a "$NEWCOL" -lt "$BARCOL_ARR_LEN" ]; then
        local NEWCOL=$NEWCOL
    else
        echo " $NEWCOL is not a valid index no for THEME_VAR"
        local NEWCOL=0
    fi

    cp ~/.bashrc ~/.bashrc_OG ### create failsafebackup first
    local CURRCOL=$(grep "THEME_VAR=" ~/.bashrc | grep -v sed | tr '=' ' ' | awk '{print $2}')
    cat ~/.bashrc | sed "s/THEME_VAR=${CURRCOL}/THEME_VAR=${NEWCOL}/" > ~/.bashrc_temp && cp ~/.bashrc_temp ~/.bashrc

    ### Debugging switch for when using theme_generator.py
    PRINTCOLVAR="ON"
    if [ $PRINTCOLVAR = "ON" ]; then
        BARCOL_NAME=${BARCOL_ARR[${THEME_VAR}]}
        TXTCOL_NAME=${TXTCOL_ARR[${THEME_VAR}]}
        echo "BARCOL = ${BARCOL_NAME}"
        echo "TXTCOL = ${TXTCOL_NAME}"
    fi

    source ~/.bashrc
}

function col_cp_root(){
    ## copies .bashrc to root
    sudo cp ~/custom_bashrc/.bashrc /root/
    sudo cp -rf ~/custom_bashrc /root/
    sudo su root
    source /root/.bashrc
}

function col_ssh(){
    ## copies .bashrc to remote host specified by $1 commandline arg user@remotehost
    #rsync -av ~/.bashrc ${1}:~/
    rsync -av ~/custom_bashrc ${1}:~/
    ssh -A "${1}" 'mv .bashrc .your_old_bashrc'
    ssh -A "${1}" 'ln -s ~/custom_bashrc/_bashrc ~/.bashrc'
}

#############################
function virtualenv_info(){
    # Get Virtual Env
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Strip out the path and just leave the env name
        venv="${VIRTUAL_ENV##*/}"
    else
        # In case you don't have one activated
        venv=''
    fi
    [[ -n "$venv" ]] && echo "${BARCOL}──${TXTCOL}[${HIRed}venv: $venv${TXTCOL}]"
}

##################################
### returns the last 2 fields of the working directory
pwdtail () {
    pwd | awk -F/ '{nlast = NF -1;print $nlast"/"$NF}' #TODO: Use for something?
}