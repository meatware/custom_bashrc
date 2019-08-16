#################################################################
#################################################################
#################################################################
###https://superuser.com/questions/195781/sudo-is-there-a-command-to-check-if-i-have-sudo-and-or-how-much-time-is-left
### The command below will show a colored indication that you have sudo granted, so you remember to do a sudo -k
function FUNCpromptCommand () {
    sudo -n uptime 2>/dev/null 1>/dev/null
  local bSudoOn=`if(($?==0));then echo true; else echo false; fi`

    history -a; # append to history at each command issued!!!
    local width=`tput cols`;
    local half=$((width/2))
    local dt="[EndAt:`date +"%Y/%m/%d-%H:%M:%S.%N"`]";
  if $bSudoOn; then dt="!!!SUDO!!!$dt"; fi
    local sizeDtHalf=$((${#dt}/2))
    #printf "%-${width}s" $dt |sed 's" "="g';
    echo
    output=`printf "%*s%*s" $((half+sizeDtHalf)) "$dt" $((half-sizeDtHalf)) "" |sed 's" "="g';`

    local colorLightRed="\e[1;31m"
  local colorNoColor="\e[0m"
    if $bSudoOn; then
        echo -e "${colorLightRed}${output}${colorNoColor}"
    else
        echo -e "${output}"
    fi
}
