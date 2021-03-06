# QTILE Groups definition
# Dusan Ilic 2021

from libqtile.config import Group, ScratchPad, DropDown

# The groups variable is used to define groups
# Index in the list starting from 1 determines the
# keybinding used to manage the group
groups = [
    Group("1"),
    Group("2"),
    Group("3"),
    Group("4"),
    Group("5"),
    Group("6"),
    Group("7"),
    Group("8"),
    Group("9"),
    ScratchPad("scratchpad", [DropDown("ranger_scratchpad", "st -e ranger", height=0.5, on_focus_lost_hide=False,)]),
]
