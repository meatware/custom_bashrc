cite about-plugin
about-plugin 'history manipulation'
# enter a few characters and press UpArrow/DownArrow
# to search backwards/forwards through the history
if [[ ${SHELLOPTS} =~ (vi|emacs) ]]
then
    # https://codeinthehole.com/tips/the-most-important-command-line-tip-incremental-history-searching-with-inputrc/
    bind '"\e[A":history-search-backward'
    bind '"\e[B":history-search-forward'
    bind '"\e[C":forward-char'
    bind '"\e[D":backward-char'
fi

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
