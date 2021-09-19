#!/bin/sh
wallpaper=$(grep -Po "s/\K.*" ~/.cache/wal/wal)
mv ~/Wallpapers/manual/$wallpaper ~/Wallpapers
