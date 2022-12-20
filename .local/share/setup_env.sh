#!/bin/bash

# Set environment variables
export PATH=$PATH:$HOME/.local/bin/dmenu_scripts:$HOME/.local/bin/scripts:$HOME/.local/bin

# Default text editor
export EDITOR=/snap/bin/nvim
export VISUAL=/snap/bin/nvim

# Default browser
# export BROWSER=/usr/bin/firefox
# export BROWSER=/usr/local/bin/qutebrowser
export BROWSER=chromium

# Default terminal emulator, to be used by other scripts
export TERM_EMULATOR=/usr/local/bin/st

# dmenu command used in scripts
export DMENU_COMMAND="rofi -dmenu"

# XDG Base directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
