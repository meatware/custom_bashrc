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
alias gh='history | grep ' # shows all history
# http://thirtysixthspan.com/posts/grep-history-for
# ghf - [G]rep [H]istory [F]or top ten commands and execute one
# usage:
#  Most frequent command in recent history
#   ghf
#  Most frequent instances of {command} in all history
#   ghf {command}
#  Execute {command-number} after a call to ghf
#   !! {command-number}
function latest_history { history | tail -n 50 ; }

function grepped_history { history | grep "$1" ; }

function chop_first_column { awk '{for (i=2; i<NF; i++) printf $i " "; print $NF}' ; }

function add_line_numbers { awk '{print NR " " $0}' ; }

function top_ten { sort | uniq -c | sort -r | head -n 10 ; }

function unique_history { chop_first_column | top_ten | chop_first_column | add_line_numbers ; }

function ghf {
    if [ $# -eq 0 ]; then latest_history | unique_history; fi
    if [ $# -eq 1 ]; then grepped_history "$1" | unique_history; fi
    if [ $# -eq 2 ]; then
        $(grepped_history "$1" | unique_history | grep ^$2 | chop_first_column)
    fi
}

################################################
# https://stackoverflow.com/questions/14750650/how-to-delete-history-of-last-10-commands-in-shell
histdeln(){
  # deletes the last n lines of history including del history command

  # Get the current history number
  n=$(history 1 | awk '{print $1}')

  # Call histdel with the appropriate range
  histdel $(( $n - $1 )) $(( $n - 1 ))
}

histdel(){
    for h in $(seq $1 $2 | tac); do
        history -d $h
    done
    history -d $(history 1 | awk '{print $1}')
}

################################################
grepo() {
    # finds all files in current directory recursively and searches each for grep pattern
    # (case insensitive)
    find ./ -not -path "*/\.*" -not -path "./venv/*" -not -path "./node_modules/*" -name "*" -exec grep -Isi $1 {}  \;
}

grepoall() {
    # finds all files in current directory recursively and searches each for grep pattern
    # Shows the file name in which the pattern was found (case insensitive + linenumber)
    find ./ -not -path "*/\.*" -not -path "./venv/*" -not -path "./node_modules/*" -iname "*" -exec grep -Isin $1 {} /dev/null \;
}

venv_create() {
    # takes argument like python3.6
    pyth_ver=$(which $1)
    $pyth_ver -m venv venv
    source venv/bin/activate
}

venv_activate() {
    source venv/bin/activate
}