#!/bin/sh

# disable terminal beep
xset -dpms
xset s off
xset b off

# set desktop background
xsetroot -solid "#000000"

# configure keyboard layout Ctrl+Alt to switch between us,gr
setxkbmap -model pc105 -layout us,gr -option grp:ctrl_alt_toggle

# load .Xresources
xrdb -merge ~/.Xresources

/usr/local/bin/dwm_status &

exec dwm
