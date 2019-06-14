#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls -la'

PS1='\[\e[32m\]\u@\h\[\e[m\]:\[\e[34m\]\w\$\[\e[m\] '
# PS1='\u@\h \W\$ '

# For use in ssh-agent.
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
