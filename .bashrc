#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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


# Path for the current version of the julia programming language
# Cannot use the arch package, because some julia packages that
# are essential for me (like GSL.jl) do not work, unfortunately
#export PATH="/opt/julia-1.0.1/bin:$PATH:$HOME/.config/scripts"
export PATH="$PATH:$HOME/.config/scripts"

#xrandr --output eDP1 --auto --output HDMI2 --auto --right-of eDP1

# Start the X-Server automatically if I log in on tty1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec startx
fi


