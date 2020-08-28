#! /bin/bash
lxqt-config-monitor -l
feh --bg-fill $(ls -d $HOME/Pictures/Wallpapers/* | shuf | head -1)

killall -q pollybar
while pgrep -u $UID -x polybar >/dev/null/ 
do 
    sleep 1
done
polybar mybar &
