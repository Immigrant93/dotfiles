#! /bin/bash

ENABLED=$(xset q | sed -n 's/.*DPMS is \(Enabled\).*/\1/p')

if [ $ENABLED ]
then
 xset -dpms && xset s off
fi
udiskie &
xset b off
exec i3
