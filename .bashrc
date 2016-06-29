#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# xclip

alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'


