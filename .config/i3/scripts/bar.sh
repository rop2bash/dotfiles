#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have ben shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

sleep 0.2

# Launch bar
polybar top &
