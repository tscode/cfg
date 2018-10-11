#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec startx
fi



# make some commands like ls and grep use colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias g++='g++ -fdiagnostics-color=always'

# Manage dot files via git
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# alias vim to neovim
alias vim='nvim'

function cf {
  builtin cd $@
  pwd > /tmp/.default_dir
}

function sf {
  echo 'not working yet! implement it!'
}

# Set default editor
export EDITOR=nvim

# Set terminal type
export TERM="xterm-256color"

# If I want to use GPG pwd verification from the terminal
export GPG_TTY=$(tty)
stty -ixon

PS1='[\u@\h \W]\$  '
