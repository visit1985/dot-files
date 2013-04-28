#
# ~/.bash_aliases
#

alias ls='ls --color'
alias ll='ls -l'
alias la='ls -la'
alias vip='sudo su'
alias top='htop'
alias psu='ps -fHU $USER'
alias ports='lsof -i -P'
alias calc='bc -l <<< '
alias json='python -m json.tool'

if [ -x /usr/bin/apt-get ]; then
    alias apt-get='sudo apt-get'
fi

if [ -x /usr/bin/pacman ]; then
    alias pacman='sudo pacman'
    alias update='pacman -Syu'
fi
