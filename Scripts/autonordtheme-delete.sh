#!/bin/sh

wallpaper=$(grep -Po "s/\K.*" ~/.cache/wal/wal)

rm ~/Wallpapers/$wallpaper

echo "~/Wallpapers/$wallpaper removed"

