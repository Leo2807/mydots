#!/usr/bin/env sh

# Terminate already running bar instances
killall -q -w polybar &

# Wait until the processes have been shut down
#while pgrep -u $(id -u) -x polybar >/dev/null; do sleep 1; done

sleep 1

# Launch bar1 and bar2
polybar wpgtk &


echo "Bars launched..."
