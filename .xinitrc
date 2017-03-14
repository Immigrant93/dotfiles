#!/bin/sh

# disable terminal beep
xset -dpms
xset s off
xset b off

# set desktop background
xsetroot -solid "#000000"

# configure keyboard layout Ctrl+Alt to switch between us,gr
setxkbmap -model pc105 -layout us,gr -option grp:ctrl_alt_toggle

# dwm status bar
while true
do
  VOL=$(amixer get Master | tail -n1 | awk '{ print $5 }' | tr -d '[]')
  DT=$(date +"%b %d, %Y %H:%M")
  BAT=$(cat /sys/class/power_supply/BAT0/capacity)
  xsetroot -name "vol: $VOL | bat: $BAT% | $DT"
  sleep 2s
done&

# start dwm
exec /home/marinos/.dwm/dwm
