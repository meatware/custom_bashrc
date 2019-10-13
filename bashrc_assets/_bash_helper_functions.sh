function check_new_bashrc_vers() {
    git --git-dir=${HOME}/custom_bashrc/.git fetch --quiet 
    # check relation of our local .bashrc to remote basshrc at https://github.com/meatware/custom_bashrc
    BASHRC_CURR_BRANCH=$(git --git-dir=${HOME}/custom_bashrc/.git rev-parse --abbrev-ref HEAD)
    BASHRC_COMMIT_DETAILS=$(git --git-dir=${HOME}/custom_bashrc/.git rev-list --left-right \
                            --count origin/master..."${BASHRC_CURR_BRANCH}")
    BC_BEHIND=$(echo "$BASHRC_COMMIT_DETAILS" | awk '{print $1}' | sed 's/^[ \t]*//;s/[ \t]*$//')
    BC_AHEAD=$(echo "$BASHRC_COMMIT_DETAILS" | awk '{print $2}' | sed 's/^[ \t]*//;s/[ \t]*$//')

    echo -e "\n${PureCHATREU}Your bashrc is ${PureBRed}${BC_BEHIND} ${PureCHATREU}commits behind origin/master and ${PureBBlue}${BC_AHEAD} ${PureCHATREU}commits ahead\n${NOCOL}"
}



function gedit(){ command gedit "$@" &>/dev/null & }

function nomacs(){ command nomacs "$@" &>/dev/null & }

function Ngedit(){ command gedit --new-window "$@" &>/dev/null & }

function terminator(){ command terminator --geometry=945x1200+0+0 "$@" &>/dev/null & }

function sshub(){
    # usage sshub 172.17.0.1
    HOST_ADDR="$1"
    ssh -A ubuntu@${HOST_ADDR}
}

function sshec2(){
    # usage sshub 172.17.0.1
    HOST_ADDR="$1"
    ssh -A ec2-user@${HOST_ADDR}
}

function sshbast(){
    # ssh via hump host
    # You need to have added your .pem key via ssh-add -k
    # usage sshub 172.17.0.1 # just add the machine you want to jump to
    HOST_ADDR="$1"
    ssh -A -J username@bastion.com ubuntu@${HOST_ADDR}
}

################################################
grepo() {
    # finds all files in current directory recursively and searches each for grep pattern
    # (case insensitive)
    find ./ -not -path "*/\.*" -not -path "*venv/*" -not -path "*node_modules/*" -name "*" -exec grep --color=auto -Isi "$1" {}  \;
}

grepoall() {
    # finds all files in current directory recursively and searches each for grep pattern
    # Shows the file name in which the pattern was found (case insensitive + linenumber)
    # FILE_SEARCH eaxmple "*.py" with quotes or "*" if not supplied
    TXT_PATTERN="$1"
    if [[ $# -eq 2 ]]; then
        FILE_SEARCH="$2"
    else
        FILE_SEARCH="*"
    fi

    find ./ -not -path "*/\.*" -not -path "*venv/*" -not -path "*node_modules/*" -iname "${FILE_SEARCH}" -exec grep --color=auto -Isin "$TXT_PATTERN" {} /dev/null \;
}

del_file_by_ext() {
    file_ext="$1"
    find . -name "$file_ext" -exec rm -fv {} \;
}

# TODO: figure out virtualenv for python2
# https://stackoverflow.com/questions/41573587/what-is-the-difference-between-venv-pyvenv-pyenv-virtualenv-virtualenvwrappe
venv_create() {
    if [[ $# -ge 1 ]]; then
        # takes argument like python3.6
        desired_py_version=$1
        pyth_ver=$(which $desired_py_version)
        if [[ -z "${pyth_ver}" ]]; then
            echo "python version $desired_py_version not found"
        else
            $pyth_ver -m venv venv
            source venv/bin/activate
        fi
    else
        echo "supply an arg"
    fi
}

venv_activate() {
    source venv/bin/activate
}