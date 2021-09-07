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
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# Default browser
export BROWSER=/usr/bin/qutebrowser

# Default terminal emulator, to be used by other scripts
export TERM_EMULATOR=/usr/local/bin/st
export TERM=st

# dmenu command used in scripts
export DMENU_COMMAND="rofi -dmenu"

# Start window manager
exec qtile start
