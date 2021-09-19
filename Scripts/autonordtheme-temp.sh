#!/bin/sh

wallpaper=$(grep -Po "s/\K.*" ~/.cache/wal/wal)

echo "Applying Theme..."
python ~/.config/ImageGoNord/src/cli.py -q -b --img="/home/uzel/Wallpapers/$wallpaper" -o="/home/uzel/Wallpapers/nord/$wallpaper-nord"
echo "Setting Colours..."
wal -q -i /home/uzel/Wallpapers/nord/$wallpaper-nord.png -a 95
wal-discord -t [-b wal]

wallpaper=$(grep -Po "s/\K.*" ~/.cache/wal/wal)

rm ~/Wallpapers/$wallpaper

echo "~/Wallpapers/$wallpaper-temp removed"
