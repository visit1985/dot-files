# restore wallpaper
nitrogen --restore

# set keyboard layout
setxkbmap -layout de

# disable beep
xset b off

# xset dpms force on
#xset +dpms
#xset dpms 900 930 960

# start synergy
if [ -x /usr/bin/synergy ]; then
    synergyc -d ERROR quorra
fi

# exec window manager
exec i3
