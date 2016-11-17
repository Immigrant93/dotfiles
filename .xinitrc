#!/bin/sh
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi
if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi
if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xset -dpms
xset s off
xset b off
xsetroot -solid "#222222"
xbacklight -set 25
setxkbmap -model pc105 -layout us,gr -option grp:ctrl_alt_toggle
while true
do
  VOL=$(amixer get Master | tail -n1 | awk '{ print $5 }' | tr -d '[]')
  DT=$(date +"%b %d, %Y %H:%M")
  BAT=$(cat /sys/class/power_supply/BAT0/capacity)
  xsetroot -name "vol: $VOL | bat: $BAT% | $DT"
  sleep 1s
done&

exec /home/marinos/.dwm/dwm
