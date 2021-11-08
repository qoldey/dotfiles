#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/hack"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar

if type "xrandr"; then
       for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
                MONITOR=$m polybar --reload -q top1 -c "$DIR/config.ini" &
	            
		MONITOR=$m polybar --reload -q bottom1 -c "$DIR/config.ini" &
		
		MONITOR=$m polybar --reload -q bottom2 -c "$DIR/config.ini" &
		 done
	else
	    polybar --reload -q first -c "$DIR/config.ini" &
	    polybar --reload -q second -c "$DIR/config.ini" &
	    polybar --reload -q third -c "$DIR/config.ini" &
	fi
