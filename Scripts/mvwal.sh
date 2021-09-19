#!/bin/sh

wallpaper=$(grep -Po "s/\K.*" ~/.cache/wal/wal)
mv ~/Wallpapers/$wallpaper ~/Wallpapers/manual
echo "$wallpaper moved to ~/Wallpapers/manual"
