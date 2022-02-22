#!/bin/bash
#
# ~/.xinitrc

# Read Xresources
xrdb $HOME/.Xresources

# Setup environment
[ -f $HOME/.local/share/setup_env.sh ] && source $HOME/.local/share/setup_env.sh

# Start window manager
exec qtile start
