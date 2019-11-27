
# from bash-it

cite about-plugin
about-plugin 'AWS helper functions'

# export default AWS region & output
export AWS_DEFAULT_REGION="eu-west-1"
export AWS_DEFAULT_OUTPUT="json"

AWS_CONFIG_FILE="${AWS_CONFIG_FILE:-$HOME/.aws/config}"
AWS_SHARED_CREDENTIALS_FILE="${AWS_SHARED_CREDENTIALS_FILE:-$HOME/.aws/credentials}"

function awskeys {
    about 'helper function for AWS credentials file'
    group 'aws'

    if [[ ! -f "${AWS_SHARED_CREDENTIALS_FILE}" ]]; then
        echo "AWS credentials file not found"
        return 1
    fi

    if [[ $# -eq 1 ]] && [[ "$1" = "list" ]]; then
        __awskeys_list "$2"
    elif [[ $# -eq 1 ]] && [[ "$1" = "unset" ]]; then
        __awskeys_unset "$2"
    elif [[ $# -eq 2 ]] && [[ "$1" = "show" ]]; then
        __awskeys_show "$2"
    elif [[ $# -eq 2 ]] && [[ "$1" = "export" ]]; then
        __awskeys_export "$2"
    elif [[ $# -eq 2 ]] && [[ "$1" = "region" ]]; then
        __awskeys_region "$2"
    else
        __awskeys_help
    fi
}

function __awskeys_help {
    echo -e "Usage: awskeys [COMMAND] [profile]\n"
    echo -e "Helper to AWS credentials file.\n"
    echo -e "Commands:\n"
    echo "   help    Show this help message"
    echo "   list    List available AWS credentials profiles"
    echo "   show    Show the AWS keys associated to a credentials profile"
    echo "   export  Export an AWS credentials profile keys as environment variables"
    echo "   unset   Unset the AWS keys variables from the environment"
    echo "   region  Change aws region which defaults to eu-west-1"
}

function __awskeys_region {
    local new_region=$1
    if [[ -n "${new_region}" ]]; then
    echo "AWS_DEFAULT_REGION='${new_region}'"
        export AWS_DEFAULT_REGION="${new_region}"
    fi
}

function __awskeys_get {

    local ln=$(grep -n "\[ *$1 *\]" "${AWS_SHARED_CREDENTIALS_FILE}" | cut -d ":" -f 1)
    if [[ -n "${ln}" ]]; then
        local profile_line_idxs=$(grep -n "\[*\]" "${AWS_SHARED_CREDENTIALS_FILE}" | tr ":" " " | awk '{print $1}' | tr '\n' ' ')
        local  last_line=$(wc -l "${AWS_SHARED_CREDENTIALS_FILE}" | awk '{print $1}')

        local  all_idxs="${profile_line_idxs}${last_line}"
        local  term_ln=$(echo "$all_idxs" | tr ' ' '\n' | grep -w -A 1 "$ln" | tail -1)
        local  match_strings="aws_access_key_id|aws_secret_access_key|aws_session_token|aws_default_region|aws_default_output|aws_profile|aws_role_session_name|aws_ca_bundle|AWS_ACCESS_KEY_ID|AWS_SECRET_ACCESS_KEY|AWS_SESSION_TOKEN|AWS_DEFAULT_REGION|AWS_DEFAULT_OUTPUT|AWS_PROFILE|AWS_ROLE_SESSION_NAME|AWS_CA_BUNDLE"
        sed -n "${ln},${term_ln}p" "${AWS_SHARED_CREDENTIALS_FILE}" | egrep  "${match_strings}"
    fi
}

function __awskeys_list {
    #local credentials_list="$((egrep '^\[ *[a-zA-Z0-9_-]+ *\]$' "${AWS_SHARED_CREDENTIALS_FILE}"; grep "\[profile" "${AWS_CONFIG_FILE}" | sed "s|\[profile |\[|g") | sort | uniq)"
    local credentials_list="$((egrep '^\[ *[a-zA-Z0-9_-]+ *\]$' "${AWS_SHARED_CREDENTIALS_FILE}"; grep "\[" "${AWS_SHARED_CREDENTIALS_FILE}" | sed "s|\[profile |\[|g") | sort | uniq)"
    if [[ -n $"{credentials_list}" ]]; then
        echo -e "Available credentials profiles:\n"
        for profile in ${credentials_list}; do
            echo "    $(echo ${profile} | tr -d "[]")"
        done
        echo
    else
        echo "No profiles found in credentials file"
    fi
}

function __awskeys_show {
    local p_keys="$(__awskeys_get $1)"
    if [[ -n "${p_keys}" ]]; then
        echo "${p_keys}"
    else
        echo "Profile $1 not found in credentials file"
    fi
}

function __awskeys_export {
    if [[ $(__awskeys_list) == *"$1"* ]]; then
        local p_keys=( $(__awskeys_get $1 | tr -d " ") )
        if [[ -n "${p_keys}" ]]; then
            for p_key in ${p_keys[@]}; do
            echo "* $p_key"
                local key="${p_key%=*}"
                export "$(echo ${key} | tr [:lower:] [:upper:])=${p_key#*=}"
            done
        fi
        export AWS_PROFILE="$1"
    else
        echo "Profile $1 not found in credentials file"
    fi
}

function __awskeys_unset {
    unset AWS_PROFILE AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN
}

function __awskeys_comp {
    local cur prev opts prevprev
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="help list show export unset region"
    case "${prev}" in
        help|list|unset)
            return 0
            ;;
        show|export)
            local profile_list="$(__awskeys_list | grep "    ")"
            COMPREPLY=( $(compgen -W "${profile_list}" -- ${cur}) )
            return 0
            ;;
    esac
    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
    return 0
}

complete -F __awskeys_comp awskeys
