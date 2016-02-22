#! /bin/bash
setterm -blank 0 -powersave off -powerdown 0
xset s off&
xset b off&
udiskie &
exec i3
