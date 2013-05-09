#
# ~/.bashrc
#

setterm -blength 0

export EDITOR=vi
export LANG=en_US.UTF-8
export TERM=rxvt-256color

# extend user's private binary path
[ -d ~/bin ] && export PATH=$PATH:~/bin
[ -d ~/.bin ] && export PATH=$PATH:~/.bin

# read aliases
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# extend history buffer
export HISTFILESIZE=1000000000
export HISTSIZE=1000000

# fancy arch logo on shell startup
[ ! -z "$PS1" ] && [ -x /usr/bin/archey ] && /usr/bin/archey

