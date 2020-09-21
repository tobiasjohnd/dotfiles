#! bin/sh

pgrep -x polybar > /dev/null && killall -qw polybar
polybar mybar &
