#
# ~/.bashrc
#

# Do not source if the shell is not interactive
# [[ $- != *i* ]] && return

# Enable vi mode
# set -o vi

# Enable bash_completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# General aliases to improve terminal
alias cp='cp -iv'               # confirm before overwriting something
alias mv='mv -iv'               # confirm before overwriting something
command -v exa > /dev/null 2>&1 && alias ls='exa --group-directories-first'|| alias ls='ls --color=auto --group-directories-first'      # add color to ls
command -v lsd > /dev/null 2>&1 && alias ls='lsd --group-dirs first'|| alias ls='ls --color=auto --group-directories-first'      # add color to ls
alias l.='ls -ld .*'            # list hidden files in long format
alias ll='ls -l '               # list in long format
alias l='ll'
alias la='ls -la'               # list all files in long format
alias llt='ll --tree'
alias lat='la --tree'
alias grep='grep --color=auto'  # add color to grep
alias ccat='highlight --out-format=ansi'    # Colored cat with syntax highlight

# Misc aliases
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias ec='fzf_editconfig'
alias gs='git status'
alias e='nvim'
alias eh='e $HISTFILE'
alias sch='ssh user@192.168.0.111'
alias ssh110='ssh user@192.168.0.110'
alias ssh72='ssh root@192.168.0.72'
alias ssh73='ssh root@192.168.0.73'
alias bat='batcat'
alias r='ranger'
alias :wq='exit'

# Allow root X Server access
xhost +local:root > /dev/null 2>&1

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.
shopt -s checkwinsize

# Auto cd into directories
shopt -s autocd

# Setup environment
[ -f $HOME/.local/share/setup_env.sh ] && source $HOME/.local/share/setup_env.sh

# Fuzzy finder default options
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"

# Default terminal emulator, to be used by other scripts
export TERM_EMULATOR=/usr/local/bin/st

# Export Xilinx Licence File
export XILINX_VIVADO=/tools/Xilinx/Vivado/2021.1
export PATH=$PATH:$XILINX_VIVADO/bin
export XILINXD_LICENSE_FILE=2300@192.168.0.111

# History settings
shopt -s cmdhist                # multiple commands on one line show up as a single line
shopt -s histappend             # Enable history appending instead of overwriting
export HISTCONTROL=ignoreboth:erasedups   # ignore duplicates in command history
export HISTSIZE=1000            # increase history size to 1000 lines
export PROMPT_COMMAND="history -a; history -c; history -r;"
export HISTIGNORE='ls*:ll*:la:gs:pwd:history:clear:cd*:startx:htop:top:ranger:lsblk:neofetch:python:e *:ping*'

# Create the directory if it doesn't exist first
[ -d "$XDG_DATA_HOME/bash" ] || mkdir -p $XDG_DATA_HOME/bash
export HISTFILE="$XDG_DATA_HOME/bash/history"   # Declutter $HOME

# ~ Clean-up
export WGETRC="$HOME/.config/wget/wgetrc"
export LESSHISTFILE="-"
export PYLINTHOME="$XDG_CACHE_HOME"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# Prompt style
export PS1="\[$(tput bold)\]\[$(tput setaf 2)\] \w \\$ \[$(tput sgr0)\]"
# export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]>_ \u: \W \\$ \[$(tput sgr0)\]"
# export PS1="\u: \W $ "
# export PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '
# export PS1='\[\033[01;32m\][\u \W\[\033[01;32m\]]\$\[\033[00m\] '

export QSYS_ROOTDIR="/home/dusan/intelFPGA_lite/20.1/quartus/sopc_builder/bin"
