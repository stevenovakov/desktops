#
# ~/.bash_profile
#

# Environment Variables
PATH=$PATH:~/scripts
VISUAL=vim
EDITOR=vim

# Login initialiaton
[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

