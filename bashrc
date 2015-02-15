#
# ~/.bashrc
#

setterm -blength 0 2>/dev/null

export EDITOR=vi
export LANG=en_US.UTF-8
if [ "$TERM" == "rxvt-unicode-256color" ]; then
    export TERM=rxvt-256color
fi

# extend user's private binary path
[ -d ~/bin ] && export PATH=$PATH:~/bin
[ -d ~/.bin ] && export PATH=$PATH:~/.bin

# read aliases
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# show git status in prompt
if [ -f /usr/share/git/git-prompt.sh ]; then
    . /usr/share/git/git-prompt.sh
    export GIT_PS1_SHOWDIRTYSTATE=1
    export PS1='\[\e[01;32m\]\u@\h\[\e[01;34m\] \w\[\e[01;31m\]$(__git_ps1) \[\e[01;34m\]\$\[\e[00m\] '
fi

# extend history buffer
export HISTFILESIZE=1000000000
export HISTSIZE=1000000

# fancy arch logo on shell startup
[ ! -z "$PS1" ] && [ -x /usr/bin/archey ] && /usr/bin/archey

