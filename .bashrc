#
# ~/.bashrc
#

# Do not source if the shell is not interactive
# [[ $- != *i* ]] && return

# Enable bash_completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# Allow root X Server access
xhost +local:root > /dev/null 2>&1

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.
shopt -s checkwinsize

# Auto cd into directories
shopt -s autocd

# Fuzzy finder default options
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"

# History settings
shopt -s cmdhist                # multiple commands on one line show up as a single line
shopt -s histappend             # Enable history appending instead of overwriting
export HISTCONTROL=ignoreboth:erasedups   # ignore duplicates in command history
export HISTSIZE=1000            # increase history size to 1000 lines
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export HISTIGNORE='ls:ll:la:gs:pwd:history:clear:cd:startx:htop:top:ranger:lsblk:neofetch'

# Create the directory if it doesn't exist first
[[ -n $XDG_DATA_HOME && -d "$XDG_DATA_HOME/bash" ]] || mkdir -p $XDG_DATA_HOME/bash
[ -n $XDG_DATA_HOME ] && export HISTFILE="$XDG_DATA_HOME/bash/history"   # Declutter $HOME

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

# General aliases to improve terminal
alias cp='cp -iv'               # confirm before overwriting something
alias mv='mv -iv'               # confirm before overwriting something
alias ls='exa --color=auto --group-directories-first'      # add color to ls
alias l.='ls -ld .*'            # list hidden files in long format
alias ll='ls -l '               # list in long format
alias la='ls -la'               # list all files in long format
alias grep='grep --color=auto'  # add color to grep

# Misc aliases
[ -e $HOME/.local/share/random_aliases ] && source $HOME/.local/share/random_aliases
