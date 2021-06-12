# Set background
set_wallpaper
# Setup keybindings
sxhkd -m 1 &
# Monitor settings
xrandr --output HDMI1 --primary --left-of eDP1
# Start the notification-daemon
# /usr/lib/notification-daemon-1.0/notification-daemon &
# /usr/lib/xfce4/notifyd/xfce4-notifyd &
# dunst &
# Allow transparent windows
xcompmgr &
# Initialize keyboard layout
keyboard_layout --set us
# Start pulse deamon to update status bar on audio events
killall pulse_daemon && killall pactl; pulse_daemon &
# Start the status bar
dwmblocks &
