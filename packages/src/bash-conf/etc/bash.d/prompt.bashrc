
lsprompt () {
    echo "asterix obelix"
}

prompt () {

    color1='\[\033[01;34m\]'
    color2='\[\033[01;31m\]'
    color3='\[\033[00m\]'

    if [[ ${EUID} == 0 ]]; then
        #export PS1="${debian_chroot:+($debian_chroot)}\n${color1}\w\n${color2}\h \$${color3} "
        export PS1="${debian_chroot:+($debian_chroot)}\n\w\n\h \$ "
        exit
    fi

    case $1 in
        asterix)
            #export PS1="${debian_chroot:+($debian_chroot)}\n${color1}\w\n${color2}[\u@\h]\$${color3} "
            export PS1="${debian_chroot:+($debian_chroot)}\n\w\n[\u@\h]\$ "
            ;;
        obelix)
            #export PS1="${debian_chroot:+($debian_chroot)}\n${color1}\w\n${color2}\u@\h:\$${color3} "
            export PS1="${debian_chroot:+($debian_chroot)}\n\w\n\u@\h:\$ "
            ;;
    esac
}

prompt obelix
