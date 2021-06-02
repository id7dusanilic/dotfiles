# Set background
set_wallpaper
# Setup keybindings
sxhkd -m 1 &
# Monitor settings
xrandr --output HDMI1 --primary --left-of eDP1
# Start the notification-daemon
/usr/lib/notification-daemon-1.0/notification-daemon &
# /usr/lib/xfce4/notifyd/xfce4-notifyd &
# Allow transparent windows
xcompmgr &
# Initialize keyboard layout
setxkbmap -layout us
# Initialize the current_lang file
echo us > $HOME/.local/share/current_lang
# Initialize the previous_lang file
echo rs > $HOME/.local/share/previous_lang
# Start pulse deamon to update status bar on audio events
pulse_daemon &
# Start the status bar
dwmblocks &
