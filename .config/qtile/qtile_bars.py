# QTILE Bars Definitions
# Dusan Ilic 2021

from libqtile import bar, widget
from qtile_colors import *

import subprocess

### Shared monitors
battery_monitor = \
    widget.Battery(
        battery = 0,
        charge_char = 'CHR',
        discharge_char = 'BAT',
        empty_char = 'BAT',
        full_char= 'BAT',
        unknown_char = 'BAT',
        update_interval = 5,
        notify_below = 10,
        format = '[ {char}: {percent:2.0%} ]',
        padding = 5,
    )

RAM_monitor = \
    widget.Memory(
        format = '[ RAM: {MemUsed:.0f}{mm}/{MemTotal:.0f}{mm} ]',
        padding = 5,
    )

clock = \
    widget.Clock(
        format='%H:%M:%S',
        padding = 10,
    )

calendar = \
    widget.Clock(
        format='%a, %B %d',
        padding = 10,
    )

def basic_elements():
    tmp = [
        widget.GroupBox(
            active = colors[3],
            inactive = colors[2],
            block_highlight_text_color = colors[3],
            disable_drag = True,
            highlight_method = 'block',
            this_screen_border = colors[0],
            this_current_screen_border = colors[0],
            other_current_screen_border = colors[1],
            other_screen_border = colors[1],
            padding = 5,
            border = 0,
            hide_unused=True,
        ),
        widget.CurrentLayoutIcon(
            scale = 0.7,
        ),
        widget.CurrentScreen(
            active_text = '',
            inactive_text = ' ',
            active_color = colors[0],
        ),
        widget.WindowName(),
        widget.Spacer(),
        widget.Wlan(
            interface='wlp3s0',
            format = '[ WIFI: {essid} {percent:2.0%} ]',
        ),
        widget.Net(
            format = '[ NET:{down} ↓↑{up} ]',
            padding = 5,
        ),
        widget.PulseVolume(
            fmt = '[ VOL: {} ]',
            padding = 5,
        ),
        RAM_monitor,
        battery_monitor,
        widget.KeyboardLayout(
            fmt = '[ {} ]',
            padding = 5,
            display_map = {'us':'US', 'rs':'PC', 'rs latin':'RS'},
        ),
        calendar,
        clock,
    ]
    return tmp

### Bar definitions
def sec_bar():
    tmp_bar =  bar.Bar(
        basic_elements(),
        size = 24,
        background = color_dark_gray,
        opacity = 1,
    )
    return tmp_bar

def main_bar():
    tmp = basic_elements()
    tmp.append(widget.Systray())
    tmp_bar =  bar.Bar(
        tmp,
        size = 24,
        background = color_dark_gray,
        opacity = 1,
    )
    return tmp_bar
