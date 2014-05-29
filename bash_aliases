#
# ~/.bash_aliases
#

alias ls='ls --color'
alias l='ls -l'
alias ll='ls -l'
alias lll='ls -l'
alias la='ls -la'
alias vip='sudo su'
alias top='htop'
alias psu='ps -fHU $USER'
alias ports='lsof -i -P'
alias calc='bc -l <<< '
alias json='python -m json.tool'

# some more secret aliases
if [ -r ~/.bash_aliases_secret ]; then
    . ~/.bash_aliases_secret
fi

# urxvt font size control
function ts {
    printf '\e]710;%s\007' "xft:Ubuntu Mono:pixelsize=${1:-14}:antialias=true:hinting=true"
    printf '\e]711;%s\007' "xft:Ubuntu Mono:bold:pixelsize=${1:-14}:antialias=true:hinting=true"
}

# urxvt transparency control
function ta {
    printf '\e]49;%s\007' "rgba:0000/0000/0200/${1:-d}${1:-d}00"
}

if [ -x /usr/bin/apt-get ]; then
    alias apt-get='sudo apt-get'
fi

if [ -x /usr/bin/pacman ]; then
    alias pacman='sudo pacman'
    alias update='pacman -Syu'
fi
