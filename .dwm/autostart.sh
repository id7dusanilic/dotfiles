# Set background
feh --no-fehbg --bg-fill '/home/minimalist/Pictures/Wallpapers/road2.jpg'
# Monitor settings
xrandr --output HDMI-2 --left-of eDP-1
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
