
cmd_result() {
    local r="$?"
    if [ "$r" -eq 0 ]; then
        echo ''
    else
        echo $'\033[1;31m'$r$'\033[00m '
    fi  
}   

PROMPT_COMMAND='var_cmd_result=$(cmd_result)'

lsprompt () {
    echo "asterix obelix"
}

prompt () {

    local color1='\[\033[01;34m\]'
    local color2='\[\033[01;32m\]'
    local color3='\[\033[00m\]'

    if [[ ${EUID} == 0 ]]; then
        if [ "$2" == "color" ]; then
            export PS1="${debian_chroot:+($debian_chroot)}\n${color1}\w\n${color2}\h $var_cmd_result${color2} \$${color3} "
        else
            export PS1="${debian_chroot:+($debian_chroot)}\n\w\n\h $var_cmd_result \$ "
        fi
        exit
    fi

    case $1 in
        asterix)
            if [ "$2" == "color" ]; then
                export PS1="${debian_chroot:+($debian_chroot)}\n${color1}\w\n${color2}[\u@\h] $var_cmd_result${color2} \$${color3} "
            else
                export PS1="${debian_chroot:+($debian_chroot)}\n\w\n[\u@\h] $var_cmd_result\[\033[01;32m\] \$ "
            fi
            ;;
        obelix)
            if [ "$2" == "color" ]; then
                export PS1="${debian_chroot:+($debian_chroot)}\n${color1}\w\n${color2}\u@\h $var_cmd_result${color2}\$${color3} "
            else
                export PS1="${debian_chroot:+($debian_chroot)}\n\w\n\u@\h $var_cmd_result\$ "
            fi
            ;;
    esac
}

prompt obelix color
