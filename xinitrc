# restore wallpaper
nitrogen --restore

# set keyboard layout
setxkbmap -layout de

#xset dpms force on
xset +dpms
xset dpms 900 930 960

# start synergy
synergyc -d WARNING tron

# exec window manager
exec i3
