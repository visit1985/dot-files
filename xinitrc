# restore wallpaper
nitrogen --restore

# set keyboard layout
setxkbmap -layout de

#xset dpms force on
xset dpms 0 0 900

# start synergy
synergyc -d WARNING tron

# exec window manager
exec i3
