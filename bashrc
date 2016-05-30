#
# ~/.bashrc
#

setterm -blength 0 2>/dev/null

export EDITOR=vim
export LANG=en_US.UTF-8
if [ "$TERM" == "rxvt-unicode-256color" ]; then
    export TERM=rxvt-256color
fi

# extend user's private binary path
[ -d ~/bin ] && export PATH=$PATH:~/bin
[ -d ~/.bin ] && export PATH=$PATH:~/.bin

# read aliases
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# prompt
export PS1='\[\e[1;32m\]\u@\h:\[\e[0m\]\w \[\e[1;34m\]\$\[\e[0m\] '
export PROMPT_DIRTRIM=2

# show git status in prompt
if [ -f /usr/share/git/git-prompt.sh ]; then
    . /usr/share/git/git-prompt.sh
    export GIT_PS1_SHOWDIRTYSTATE=1
    export PS1='\[\e[01;32m\]\u@\h:\[\e[0m\]\w \[\e[01;31m\]$(__git_ps1) \[\e[01;34m\]\$\[\e[0m\] '
fi

# history
export HISTCONTROL='ignoredups:erasedups'
export HISTFILESIZE=1000000
export HISTSIZE=1000000

