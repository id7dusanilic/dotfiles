#
# ~/.bashrc
#

# Do not source if the shell is not interactive
[[ $- != *i* ]] && return

# Enable bash_completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# General aliases to improve terminal
alias cp='cp -iv'				# confirm before overwriting something
alias cp='mv -iv'				# confirm before overwriting something
alias ls='ls --color=always'	# add color to ls
alias l.='ls -ld .*'			# list hidden files in long format
alias ll='ls -l '				# list in long format
alias la='ls -lAh'				# list all files in long format

# Misc aliases
alias fix_vmware='sudo vmware-modconfig --console --install-all'
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# Allow root X Server access
xhost +local:root > /dev/null 2>&1

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.
shopt -s checkwinsize

# Enable history appending instead of overwriting
shopt -s histappend

# Default text editor
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim

# Expand PATH variable
# PATH=$PATH:/some/path

# History settings
export HISTCONTROL=ignoredups	# ignore duplicates in command history
export HISTSIZE=1000			# increase history size to 1000 lines
# Create the directory if it doesn't exist first
[ -d "$XDG_DATA_HOME/bash" ] || mkdir -p $XDG_DATA_HOME/bash
export HISTFILE="$XDG_DATA_HOME/bash/history"	# Declutter $HOME

# Prompt style
PS1="\u: \W $ "
# PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '
# PS1='\[\033[01;32m\][\u \W\[\033[01;32m\]]\$\[\033[00m\] '

