function colsw(){
    ## switches theme color set by $THEME_VAR vals

    local NEWCOL_IDX=${1}

    ### If not an integer - default to theme val 0
    REX=^[0-9]*$
    if [[ "$NEWCOL_IDX" =~ $REX ]]; then
        true # pass TODO: figure out annoying regex not
    else
        echo "$NEWCOL_IDX is not a valid no for THEME_VAR"
        echo "Setting to default theme"
        NEWCOL_IDX=0
    fi

    ### check if integer is between 0 and number of max theme array index (in _bash_colour_defs.sh)
    if [ "$NEWCOL_IDX" -ge 0 -a "$NEWCOL_IDX" -lt "$BARCOL_ARR_LEN" ]; then
        local NEWCOL_IDX=$NEWCOL_IDX
    else
        echo " $NEWCOL_IDX is not a valid index no for THEME_VAR"
        local NEWCOL_IDX=0
    fi

    ### create failsafebackup first
    cp ~/custom_bashrc/theme_settings.sh ~/custom_bashrc/theme_settings_BACKUP.sh 
    local CURRCOL_IDX=$(grep "SET_THEME_VAR=" ~/custom_bashrc/theme_settings.sh | grep -v sed | tr '=' ' ' | awk '{print $2}')

    # This just replaced the existing one with the same one
    # change SET_PATH_COL in another function
    local CURRPATH_IDX=$(grep "SET_PATHCOL_VAR=" ~/custom_bashrc/theme_settings.sh | grep -v sed | tr '=' ' ' | awk '{print $2}' | sed 's/\"//g')

    ##################################################
cat << BACON > ~/custom_bashrc/theme_settings.sh
#!/bin/bash 

SET_THEME_VAR="${NEWCOL_IDX}"
SET_BARCOL="${BARCOL_ARR[${NEWCOL_IDX}]}"
SET_TXTCOL="${TXTCOL_ARR[${NEWCOL_IDX}]}"
SET_PATHCOL_VAR="${CURRPATH_IDX}"
SET_PATHCOL="${PATH_COLS_ARR[${CURRPATH_IDX}]}"
BACON
    ###################################################

    ### Debugging switch for when using theme_generator.py
    PRINTCOLVAR="ON"
    if [ $PRINTCOLVAR = "ON" ]; then
        PATHCOL_NAME=${PATH_COLS_ARR[${CURRPATH_IDX}]}
        BARCOL_NAME=${BARCOL_ARR[${THEME_VAR}]}
        TXTCOL_NAME=${TXTCOL_ARR[${THEME_VAR}]}
        echo "BARCOL = ${BARCOL_NAME}"
        echo "TXTCOL = ${TXTCOL_NAME}"
        echo "PATHCOL = ${PATHCOL_NAME}"
    fi

    source ~/custom_bashrc/_bashrc.sh
}

function colsw_path(){
    ## switches path color set by $PATH_COL_VAR val

    local NEWPATH_IDX=${1}

    ### If not an integer - default to theme val 0
    REX=^[0-9]*$
    if [[ "$NEWPATH_IDX" =~ $REX ]]; then
        true # pass TODO: figure out annoying regex not
    else
        echo "$NEWPATH_IDX is not a valid no for PATH_COL_VAR"
        echo "Setting to default path colour"
        NEWPATH_IDX=0
    fi

    ### check if integer is between 0 and number of max theme array index (in _bash_colour_defs.sh)
    if [ "$NEWPATH_IDX" -ge 0 -a "$NEWPATH_IDX" -lt "$PATHCOLS_ARR_LEN" ]; then
        local NEWPATH_IDX=$NEWPATH_IDX
    else
        echo " $NEWPATH_IDX is not a valid index no for PATH_COL_VAR"
        local NEWPATH_IDX=0
    fi    

    ### create failsafebackup first
    cp ~/custom_bashrc/theme_settings.sh ~/custom_bashrc/theme_settings_BACKUP.sh 
    
    #local CURRPATH_IDX=$(grep "SET_PATH_COL_VAR=" ~/custom_bashrc/theme_settings.sh | grep -v sed | tr '=' ' ' | awk '{print $2}' | sed 's/\"//g')
    #sed -i "s/SET_PATH_COL_VAR=${CURRPATH_IDX}/SET_PATH_COL_VAR=\"${NEWPATH_IDX}\"/" ~/custom_bashrc/theme_settings.sh

    #local CURRPATH_COL="${PATH_COLS_ARR[${CURRPATH_IDX}]}"
    local NEWPATH_COL="${PATH_COLS_ARR[${NEWPATH_IDX}]}"

    sed -i "/^SET_PATHCOL/d" ~/custom_bashrc/theme_settings.sh

    ##################################################
cat << CHEESE >> ~/custom_bashrc/theme_settings.sh
SET_PATHCOL_VAR="${NEWPATH_IDX}"
SET_PATHCOL="${NEWPATH_COL}"
CHEESE
    ###################################################
    echo "No of Themes: $BARCOL_ARR_LEN"
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
    rsync -av ~/custom_bashrc ${1}:~/
    ssh -A "${1}" 'mv ~/.bashrc ~/.your_old_bashrc; ln -s ~/custom_bashrc/_bashrc.sh ~/.bashrc'
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

function ssh_info(){
    if pstree -p | egrep --quiet --extended-regexp ".*sshd.*\($$\)"; then
    ssh_state="ssh-sess"
    else
    ssh_state=""
    fi
    [[ -n "$ssh_state" ]] && echo "${BARCOL}──${TXTCOL}[${HIRed}${ssh_state}${TXTCOL}]"
}

##################################
### returns the last 2 fields of the working directory
pwdtail () {
    pwd | awk -F/ '{nlast = NF -1;print $nlast"/"$NF}' #TODO: Use for something?
}
