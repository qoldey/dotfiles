#!/bin/sh

#dir=$(echo $PWD)
cd ~/Wallpapers
read -e -p 'Wallpaper: ' wal

echo "Setting wal..."
if wal -q -a 95 -i $wal ; then
	wal-discord -t
	echo "Set."
else
	echo "Failed."
fi
