#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# Read Xresources
xrdb $HOME/.Xresources

# Set environment variables
export PATH=$PATH:$HOME/.local/bin/dmenu_scripts:$HOME/.local/bin/scripts

# Default text editor
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim

# Default browser
export BROWSER=/usr/bin/qutebrowser

# Default terminal emulator, to be used by other scripts
export TERM_EMULATOR=/usr/local/bin/st
export TERM=st

# dmenu command used in scripts
export DMENU_COMMAND="rofi -dmenu"

# XDG Base directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# Turn on numlock
numlock on

# Start window manager
exec qtile start
