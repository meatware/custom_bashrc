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

    cp ~/custom_bashrc/_bashrc.sh ~/custom_bashrc/.bashrc_OG_sh ### create failsafebackup first
    local CURRCOL=$(grep "THEME_VAR=" ~/custom_bashrc/_bashrc.sh | grep -v sed | tr '=' ' ' | awk '{print $2}')
    cat ~/custom_bashrc/_bashrc.sh | sed "s/THEME_VAR=${CURRCOL}/THEME_VAR=${NEWCOL}/" > ~/custom_bashrc/_bashrc.sh_temp && 
    mv ~/custom_bashrc/_bashrc.sh_temp ~/custom_bashrc/_bashrc.sh

    ### Debugging switch for when using theme_generator.py
    PRINTCOLVAR="ON"
    if [ $PRINTCOLVAR = "ON" ]; then
        BARCOL_NAME=${BARCOL_ARR[${THEME_VAR}]}
        TXTCOL_NAME=${TXTCOL_ARR[${THEME_VAR}]}
        echo "BARCOL = ${BARCOL_NAME}" #" ${BARCOL_ARR[!${THEME_VAR}]}"
        echo "TXTCOL = ${TXTCOL_NAME}"
    fi

    source ~/custom_bashrc/_bashrc.sh
}

function col_cp_root(){
    ## copies .bashrc to root
    sudo mv /root/.bashrc /root/.your_old_bashrc
    sudo cp -rf ~/custom_bashrc /root/
    sudo ln -s /root/custom_bashrc/_bashrc.sh /root/.bashrc
    sudo su root
    source /root/.bashrc
}

function col_ssh(){
    ## copies .bashrc to remote host specified by $1 commandline arg user@remotehost
    #rsync -av ~/custom_bashrc/_bashrc.sh ${1}:~/
    rsync -av ~/custom_bashrc ${1}:~/
    ssh -A "${1}" 'mv .bashrc .your_old_bashrc'
    ssh -A "${1}" 'ln -s ~/custom_bashrc/_bashrc.sh ~/.bashrc'
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
