#!/usr/bin/env sh

sleep 0.1
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have ben shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar
polybar top &
