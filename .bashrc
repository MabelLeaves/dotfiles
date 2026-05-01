#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias eleventy='npx @11ty/eleventy'
alias copywd='wl-copy $(pwd)'
alias neofetch='fastfetch'
alias define='$HOME/.scripts/define.sh'

export GPG_TTY=$(tty)

PS1='[\u@\h \W]\$ '
