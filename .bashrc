#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -alsh --color=auto'
if [ -e ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi
