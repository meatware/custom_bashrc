# colors:
# http://bitmote.com/index.php?post/2012/11/19/Using-ANSI-Color-Codes-to-Colorize-Your-Bash-Prompt-on-Linux
# http://blog.taylormcgann.com/tag/prompt-color/

# more: https://github.com/prgmrcom/ansible-bash-color-prompt/blob/master/templates/colorprompt.sh.j2
MORANGE="\[\033[38;5;202m\]"
DORANGE="\[\033[38;5;221m\]"
YELLOW="\[\033[01;38;1;221m\]"
TEAL="\[\033[0;1;36m\]"

LBLUE="\[\033[0;1;34m\]"
VBLUE="\[\033[0;1;34m\]"
VLBLUE="\[\033[1;1;34m\]"
GRAY="\[\033[0;37m\]"
DKGRAY="\[\033[1;30m\]"
WHITE="\[\033[1;37m\]"
TERGREEN="\[\033[00m\]"
RED="\[\033[1;1;31m\]"
CHATREU="\[\033[1;1;32m\]"
LGREEN="\[\033[1;2;32m\]"
SLATE="\[\033[1;2;37m\]"
LYELLOW="\[\033[1;33m\]"
LMAGENTA="\[\033[1;35m\]"
MAGENTA="\[\033[1;1;35m\]"

###
# High Intensty
HIBlack="\[\033[0;90m\]"
HIRed="\[\033[0;1;91m\]"
HIGreen="\[\033[0;92m\]"
HIYellow="\[\033[0;1;93m\]"
HIBlue="\[\033[0;94m\]"
HIPurple="\[\033[0;95m\]"
HICyan="\[\033[0;96m\]"
HIWhite="\[\033[0;97m\]"

# ##############
# # Regular Colors
# Black='\[\e[0;30m\]'        # Black
# Red='\[\e[0;31m\]'          # Red
# Green='\[\e[0;32m\]'        # Green
# Yellow='\[\e[0;33m\]'       # Yellow
# Blue='\[\e[0;34m\]'         # Blue
# Purple='\[\e[0;35m\]'       # Purple
# Cyan='\[\e[0;36m\]'         # Cyan
# White='\[\e[0;37m\]'        # White

# # Bold
# BBlack='\[\e[1;30m\]'       # Black
# BRed='\[\e[1;31m\]'         # Red
# BGreen='\[\e[1;32m\]'       # Green
# BYellow='\[\e[1;33m\]'      # Yellow
# BBlue='\[\e[1;34m\]'        # Blue
# BPurple='\[\e[1;35m\]'      # Purple
# BCyan='\[\e[1;36m\]'        # Cyan
# BWhite='\[\e[1;37m\]'       # White

# # Underline
# UBlack='\[\e[4;30m\]'       # Black
# URed='\[\e[4;31m\]'         # Red
# UGreen='\[\e[4;32m\]'       # Green
# UYellow='\[\e[4;33m\]'      # Yellow
# UBlue='\[\e[4;34m\]'        # Blue
# UPurple='\[\e[4;35m\]'      # Purple
# UCyan='\[\e[4;36m\]'        # Cyan
# UWhite='\[\e[4;37m\]'       # White

# # Background
# On_Black='\[\e[40m\]'       # Black
# On_Red='\[\e[41m\]'         # Red
# On_Green='\[\e[42m\]'       # Green
# On_Yellow='\[\e[43m\]'      # Yellow
# On_Blue='\[\e[44m\]'        # Blue
# On_Purple='\[\e[45m\]'      # Purple
# On_Cyan='\[\e[46m\]'        # Cyan
# On_White='\[\e[47m\]'       # White

# # High Intensity
# IBlack='\[\e[0;90m\]'       # Black
# IRed='\[\e[0;91m\]'         # Red
# IGreen='\[\e[0;92m\]'       # Green
# IYellow='\[\e[0;93m\]'      # Yellow
# IBlue='\[\e[0;94m\]'        # Blue
# IPurple='\[\e[0;95m\]'      # Purple
# ICyan='\[\e[0;96m\]'        # Cyan
# IWhite='\[\e[0;97m\]'       # White

# # Bold High Intensity
# BIBlack='\[\e[1;90m\]'      # Black
# BIRed='\[\e[1;91m\]'        # Red
# BIGreen='\[\e[1;92m\]'      # Green
# BIYellow='\[\e[1;93m\]'     # Yellow
# BIBlue='\[\e[1;94m\]'       # Blue
# BIPurple='\[\e[1;95m\]'     # Purple
# BICyan='\[\e[1;96m\]'       # Cyan
# BIWhite='\[\e[1;97m\]'      # White

# # High Intensity backgrounds
# On_IBlack='\[\e[0;100m\]'   # Black
# On_IRed='\[\e[0;101m\]'     # Red
# On_IGreen='\[\e[0;102m\]'   # Green
# On_IYellow='\[\e[0;103m\]'  # Yellow
# On_IBlue='\[\e[0;104m\]'    # Blue
# On_IPurple='\[\e[0;105m\]'  # Purple
# On_ICyan='\[\e[0;106m\]'    # Cyan
# On_IWhite='\[\e[0;107m\]'   # White
#############

PATH_COLS_ARR=("${WHITE}" "${GRAY}" "${DKGRAY}" "${UGreen}")

#                0          1          2           3          4            5              6          7           8              9
BARCOL_ARR=("${SLATE}" "${BCYAN}" "${DORANGE}" "${LBLUE}"  "${LBLUE}" "${LGREEN}"     "${VBLUE}" "${HIRed}" "${HIPurple}" "${TERGREEN}")
TXTCOL_ARR=("${CHATREU}" "${SLATE}" "${MORANGE}" "${TEAL}" "${LMAGENTA}" "${CHATREU}" "${VLBLUE}" "${HIYellow}" "${HIBlue}" "${HICyan}")

 # BARCOL_ARR=(${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${MORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${DORANGE} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${YELLOW} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${TEAL} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${BCYAN} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${LBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${VLBLUE} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${GRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${DKGRAY} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${WHITE} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${TERGREEN} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${RED} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${CHATREU} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${LGREEN} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${SLATE} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LYELLOW} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${LMAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${MAGENTA} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIBlack} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIRed} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIGreen} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIYellow} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIBlue} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HIPurple} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HICyan} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite} ${HIWhite})

 # TXTCOL_ARR=(${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIBlue} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIPurple} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HICyan} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HIWhite} ${MORANGE} ${DORANGE} ${YELLOW} ${TEAL} ${BCYAN} ${LBLUE} ${VBLUE} ${VLBLUE} ${GRAY} ${DKGRAY} ${WHITE} ${TERGREEN} ${RED} ${CHATREU} ${LGREEN} ${SLATE} ${LYELLOW} ${LMAGENTA} ${MAGENTA} ${HIBlack} ${HIRed} ${HIGreen} ${HIYellow} ${HIBlue} ${HIPurple} ${HICyan})

 # BARCOL_ARR=(${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Black} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Red} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Green} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Yellow} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Blue} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Purple} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${Cyan} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${White} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BBlack} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BRed} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BGreen} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BYellow} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BBlue} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BPurple} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BCyan} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${BWhite} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IBlack} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IRed} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IGreen} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IYellow} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IBlue} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${IPurple} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${ICyan} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${IWhite} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIBlack} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIRed} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIGreen} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIYellow} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIBlue} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BIPurple} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BICyan} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} ${BIWhite} )

 # TXTCOL_ARR=(${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIBlue} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIPurple} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BICyan} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BIWhite} ${Black} ${Red} ${Green} ${Yellow} ${Blue} ${Purple} ${Cyan} ${White} ${BBlack} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan} ${BWhite} ${IBlack} ${IRed} ${IGreen} ${IYellow} ${IBlue} ${IPurple} ${ICyan} ${IWhite} ${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} )

BARCOL_ARR_LEN=${#BARCOL_ARR[@]}
#echo "len $BARCOL_ARR_LEN"