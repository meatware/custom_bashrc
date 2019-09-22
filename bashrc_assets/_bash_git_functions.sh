##################################
### git branch functions
# check https://github.com/magicmonty/bash-git-prompt
# http://stackoverflow.com/questions/2657935/checking-for-a-dirty-index-or-untracked-files-with-git
# https://github.com/jimeh/git-aware-prompt/blob/master/prompt.sh


# https://github.com/arialdomartini/oh-my-git

function parse_git() {

    ### first check to see if we are in a git branch
    git_str=$(find_git_branch)
    if [[ ! -z "$git_str" ]]; then
        ### now check for git dirty state
        git_str="${BARCOL}──${TXTCOL}[$(git_com_diff)${git_str}$(find_git_dirty)"

        ### add git stats if applicable
        git_str="${git_str}$(format_git_stats)"

        ### add final closing bracket
        git_str="${git_str}${TXTCOL}]"

        ### add short commitid string
        #git_str="${git_str}$(get_git_commid)"

        ### Final echo that PS prompt sees
        echo $git_str
    else
        echo ""
    fi
}

function parse_git_minimal() {

    ### first check to see if we are in a git branch
    git_str=$(find_git_branch)
    if [[ ! -z "$git_str" ]]; then
        ### now check for git dirty state
        git_str="${BARCOL}─${TXTCOL}(${git_str}$(find_git_dirty)"

        ### add final closing bracket
        git_str="${git_str}${TXTCOL})"

        ### add short commitid string
        #git_str="${git_str}$(get_git_commid)"

        ### Final echo that PS prompt sees
        echo $git_str
    else
        echo ""
    fi
}

#############################
function find_git_branch() {
    # Based on: http://stackoverflow.com/a/13003854/170413
    local branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
    if [[ ! -z "$branch" ]]; then
        if [[ "$branch" == "HEAD" ]]; then
            branch_fmt="${RED}!detached"
        else
            branch_fmt="${TXTCOL}${branch}"
        fi
        git_branch="${branch_fmt}"
    else
        git_branch=""
    fi
    echo $git_branch
}

#############################
function get_git_commid() {
    ### get current commit hash
    curr_commitid=$(git rev-parse --short HEAD 2> /dev/null)
    ### get previous commit hash
    prev_commitid=$(git rev-list --max-count=2 --abbrev-commit HEAD  | tail -1)
    echo "${BARCOL}──${TXTCOL}[c~${curr_commitid}]${BARCOL}──${TXTCOL}[p~${prev_commitid}]"
}

#############################
function find_git_dirty() {
    gdirtstr=$(git status 2> /dev/null | tail -n1 | sed 's/,//' | awk '{print $1, $2, $3}')
    if [[ ${gdirtstr} == "nothing to commit" ]]
        then
        dirty_state=""
    elif [[ ${gdirtstr} == "" ]]
        then
        dirty_state=""
    else
        dirty_state='\[\033[01;38;5;221m\]*'
    fi
    echo $dirty_state
}

#############################
function git_com_diff() {
    ### Check how far git branch is relative to origin
    gbranchrel=$(git status 2> /dev/null | grep "Your branch is")
    gup=$(echo $gbranchrel 2> /dev/null | grep ahead)
    gdown=$(echo $gbranchrel 2> /dev/null | grep behind)
    grelN=$(echo $gbranchrel | sed -nr 's/.*by ([0-9]+) commit?[a-z]./\1/p')

    ### uniode symbols at : http://panmental.de/symbols/
    gupdown=""
    if [[ $gup != "" ]]; then
        gupdown="${grelN}↑"
    fi

    if [[ $gdown != "" ]]; then
        gupdown="${grelN}↓"
    fi
    echo $gupdown
}

#############################
function format_git_stats() {
    ##########################################
    gporcelain=$(git status --porcelain 2> /dev/null)
    untrN=$(echo $gporcelain | tr ' ' '\n' | grep -w '??' | wc -l) # untracked
    addN=$(echo $gporcelain | tr ' ' '\n' | grep -w '^A' | wc -l)  # added
    modN=$(echo $gporcelain | tr ' ' '\n' | grep -w '^M' | wc -l)  # modified
    commN=$(echo $gporcelain | tr ' ' '\n' | grep -w '^AM' | wc -l)  # added & modified?
    delN=$(echo $gporcelain | tr ' ' '\n' | grep -w '^D' | wc -l)  # deleted

    ### Build up visible legend & git stats depending on what is appropriate

    gitlegend=""
    gitstats_str=""
    if [[ $untrN != "0" ]]; then
        gitlegend="${gitlegend}${TEAL}u"
        gitstats_str="${gitstats_str}${TEAL}${untrN}"
    fi

    if [[ $addN != "0" ]]; then
        gitlegend="${gitlegend}${LBLUE}a"
        gitstats_str="${gitstats_str}${LBLUE}${addN}"
    fi

    if [[ $modN != "0" ]]; then
        gitlegend="${gitlegend}${MAGENTA}m"
        gitstats_str="${gitstats_str}${MAGENTA}${modN}"
    fi

    if [[ $commN != "0" ]]; then
        gitlegend="${gitlegend}${HIGreen}c"
        gitstats_str="${gitstats_str}${HIGreen}${commN}"
    fi

    if [[ $delN != "0" ]]; then
        gitlegend="${gitlegend}${RED}d"
        gitstats_str="${gitstats_str}${RED}${delN}"
    fi

    ### add "/" charcaters between numbers - WIP
    #gitstats_str=$(echo $gitstats_str > /dev/null | sed "s/${gitlegend}/&{gitlegend}\//g"` # | sed 's/\/$//')
    gitlegend="${gitlegend}${SLATE}: "


    ### removes the ":" between gitlegend and gitstats_str
    if [[ $gitstats_str == "" ]]; then
        joined_gitstats=""
    else
        joined_gitstats=" ${gitlegend}${gitstats_str}"
    fi
    echo "${gupdown}${TXTCOL}${gbranchstr}${dirty_state}${joined_gitstats}"
}
