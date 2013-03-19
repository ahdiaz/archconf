
alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -lh'
alias la='ls -lhA'
alias grep='grep --color=tty -d skip'
alias egrep='egrep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias du='du -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias tree='tree -C'
alias cd..='cd ..'
alias cd-='cd -'
alias pacman='PACMAN=/usr/bin/pacman; [ -f /usr/bin/pacman-color ] && PACMAN=/usr/bin/pacman-color; $PACMAN $@'
