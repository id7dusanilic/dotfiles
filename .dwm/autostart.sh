# Set background
set_wallpaper
# Monitor settings
xrandr --output HDMI1 --left-of eDP1
# Start the notification-daemon
/usr/lib/notification-daemon-1.0/notification-daemon &
# /usr/lib/xfce4/notifyd/xfce4-notifyd &
# Allow transparent windows
xcompmgr &
# Initialize keyboard layout
setxkbmap -layout us
# Initialize the current_lang file
echo us > $HOME/.dwmblocks/current_lang
# Start the status bar
dwmblocks &
