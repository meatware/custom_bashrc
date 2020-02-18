# colors:
# http://bitmote.com/index.php?post/2012/11/19/Using-ANSI-Color-Codes-to-Colorize-Your-Bash-Prompt-on-Linux
# http://blog.taylormcgann.com/tag/prompt-color/

# more: https://github.com/prgmrcom/ansible-bash-color-prompt/blob/master/templates/colorprompt.sh.j2
NOCOL="\e[m"  # Color Reset

MORANGE="\[\033[38;5;202m\]"
DORANGE="\[\033[38;5;221m\]"
YELLOW="\[\033[38;5;226m\]"
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

BCYAN="\[\033[1;1;36m\]"

# ##############
# Regular Colors
# Black="\[\e[0;30m\]"        # Black
# Red="\[\e[0;31m\]"          # Red
# Green="\[\e[0;32m\]"        # Green
# Yellow="\[\e[0;33m\]"       # Yellow
# Blue="\[\e[0;34m\]"         # Blue
# Purple="\[\e[0;35m\]"       # Purple
# Cyan="\[\e[0;36m\]"         # Cyan
# White="\[\e[0;37m\]"        # White

# # Bold
# BBlack="\[\e[1;30m\]"       # Black
# BRed="\[\e[1;31m\]"         # Red
BGreen="\[\e[1;32m\]"       # Green
# BYellow="\[\e[1;33m\]"      # Yellow
# BBlue="\[\e[1;34m\]"        # Blue
# BPurple="\[\e[1;35m\]"      # Purple
# BCyan="\[\e[1;36m\]"        # Cyan
# BWhite="\[\e[1;37m\]"       # White

# # Underline
# UBlack="\[\e[4;30m\]"       # Black
# URed="\[\e[4;31m\]"         # Red
# UGreen="\[\e[4;32m\]"       # Green
# UYellow="\[\e[4;33m\]"      # Yellow
# UBlue="\[\e[4;34m\]"        # Blue
# UPurple="\[\e[4;35m\]"      # Purple
# UCyan="\[\e[4;36m\]"        # Cyan
# UWhite="\[\e[4;37m\]"       # White

# # Background
# On_Black="\[\e[40m\]"       # Black
# On_Red="\[\e[41m\]"         # Red
# On_Green="\[\e[42m\]"       # Green
# On_Yellow="\[\e[43m\]"      # Yellow
# On_Blue="\[\e[44m\]"        # Blue
# On_Purple="\[\e[45m\]"      # Purple
# On_Cyan="\[\e[46m\]"        # Cyan
# On_White="\[\e[47m\]"       # White

# # High Intensity
# IBlack="\[\e[0;90m\]"       # Black
# IRed="\[\e[0;91m\]"         # Red
# IGreen="\[\e[0;92m\]"       # Green
# IYellow="\[\e[0;93m\]"      # Yellow
# IBlue="\[\e[0;94m\]"        # Blue
# IPurple="\[\e[0;95m\]"      # Purple
# ICyan="\[\e[0;96m\]"        # Cyan
# IWhite="\[\e[0;97m\]"       # White

# # Bold High Intensity
# BIBlack="\[\e[1;90m\]"      # Black
# BIRed="\[\e[1;91m\]"        # Red
# BIGreen="\[\e[1;92m\]"      # Green
# BIYellow="\[\e[1;93m\]"     # Yellow
# BIBlue="\[\e[1;94m\]"       # Blue
# BIPurple="\[\e[1;95m\]"     # Purple
# BICyan="\[\e[1;96m\]"       # Cyan
# BIWhite="\[\e[1;97m\]"      # White

# # High Intensity backgrounds
# On_IBlack="\[\e[0;100m\]"   # Black
# On_IRed="\[\e[0;101m\]"     # Red
# On_IGreen="\[\e[0;102m\]"   # Green
# On_IYellow="\[\e[0;103m\]"  # Yellow
# On_IBlue="\[\e[0;104m\]"    # Blue
# On_IPurple="\[\e[0;105m\]"  # Purple
# On_ICyan="\[\e[0;106m\]"    # Cyan
# On_IWhite="\[\e[0;107m\]"   # White
####################################################

# Undecorated colours
# Normal Colors
PureBlack='\e[0;30m'        # Black
PureRed='\e[0;31m'          # Red
PureGreen='\e[0;32m'        # Green
PureYellow='\e[0;33m'       # Yellow
PureBlue='\e[0;34m'         # Blue
PurePurple='\e[0;35m'       # Purple
PureCyan='\e[0;36m'         # Cyan
PureWhite='\e[0;37m'        # White
PureCHATREU='\e[1;1;32m'

# Bold
PureBBlack='\e[1;30m'       # Black
PureBRed='\e[1;31m'         # Red
PureBGreen='\e[1;32m'       # Green
PureBYellow='\e[1;33m'      # Yellow
PureBBlue='\e[1;34m'        # Blue
PureBPurple='\e[1;35m'      # Purple
PureBCyan='\e[1;36m'        # Cyan
PureBWhite='\e[1;37m'       # White

# # Background
# PureOn_Black='\e[40m'       # Black
# PureOn_Red='\e[41m'         # Red
# PureOn_Green='\e[42m'       # Green
# PureOn_Yellow='\e[43m'      # Yellow
# PureOn_Blue='\e[44m'        # Blue
# PureOn_Purple='\e[45m'      # Purple
# PureOn_Cyan='\e[46m'        # Cyan
# PureOn_White='\e[47m'       # White
####################################################

PATH_COLS_ARR=("${WHITE}" "${GRAY}" "${DKGRAY}" "${BGreen}" "${HIPurple}" "${HIYellow}")
PATHCOLS_ARR_LEN="${#PATH_COLS_ARR[@]}"
# short array that works
#                0          1          2           3          4            5              6          7           8              9
#BARCOL_ARR=("${SLATE}" "${BCYAN}" "${MORANGE}" "${LBLUE}"  "${LBLUE}" "${LGREEN}"     "${VBLUE}" "${HIRed}" "${HIPurple}" "${TERGREEN}")
#TXTCOL_ARR=("${CHATREU}" "${SLATE}" "${DORANGE}" "${TEAL}" "${LMAGENTA}" "${CHATREU}" "${VLBLUE}" "${HIYellow}" "${HIBlue}" "${HICyan}")

# longer array:
BARCOL_ARR=("${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${MORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${DORANGE}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${YELLOW}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${TEAL}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${BCYAN}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${LBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${VLBLUE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${WHITE}" "${RED}" "${RED}" "${RED}" "${RED}" "${RED}" "${RED}" "${RED}" "${RED}" "${RED}" "${RED}" "${RED}" "${RED}" "${RED}" "${RED}" "${RED}" "${RED}" "${RED}" "${RED}" "${RED}" "${RED}" "${RED}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${CHATREU}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${LGREEN}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${SLATE}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LYELLOW}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${LMAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${MAGENTA}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIRed}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIGreen}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIYellow}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIBlue}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HIPurple}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" "${HICyan}" )

TXTCOL_ARR=("${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIYellow}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIBlue}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIPurple}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HICyan}" "${MORANGE}" "${DORANGE}" "${YELLOW}" "${TEAL}" "${BCYAN}" "${LBLUE}" "${VBLUE}" "${VLBLUE}" "${WHITE}" "${TERGREEN}" "${RED}" "${CHATREU}" "${LGREEN}" "${SLATE}" "${LYELLOW}" "${LMAGENTA}" "${MAGENTA}" "${HIRed}" "${HIGreen}" "${HIYellow}" "${HIBlue}" "${HIPurple}")

BARCOL_ARR_LEN="${#BARCOL_ARR[@]}"
