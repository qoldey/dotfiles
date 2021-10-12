#/bin/sh

Random(){
echo $(grep -Po "s/\K.*" ~/.cache/wal/wal) > ~/.cache/wallpaper.last
echo "Setting wal..."
if wal -q -a 95 -i ~/Wallpapers/ ; then
        wal-discord -t
        echo "Set: $(grep -Po "s/\K.*" ~/.cache/wal/wal)"
else
        echo "Failed: $(grep -Po "s/\K.*" ~/.cache/wal/wal)"
       	MvManual
        echo "Use -u to undo"
fi
}

Custom(){
echo $(grep -Po "s/\K.*" ~/.cache/wal/wal) > ~/.cache/wallpaper.last
cd ~/Wallpapers
read -e -p 'Wallpaper: ' wal
echo "Setting wal..."
if wal -q -a 95 -i $wal ; then
        wal-discord -t
        echo "Set: $(grep -Po "s/\K.*" ~/.cache/wal/wal)"
else
        echo "Failed: $(grep -Po "s/\K.*" ~/.cache/wal/wal)"
        MvManual
	echo "Use -u to undo"
fi
}

Nord(){
echo $(grep -Po "s/\K.*" ~/.cache/wal/wal) > ~/.cache/wallpaper.last
echo "Applying theme..."
if python ~/.config/ImageGoNord/src/cli.py -q -b --img="$HOME/Wallpapers/$(grep -Po "s/\K.*" ~/.cache/wal/wal)" -o="$HOME/Wallpapers/nord/$(grep -Po "s/\K.*" ~/.cache/wal/wal)-nord" ; then
	echo "~/Wallpapers/nord/$(grep -Po "s/\K.*" ~/.cache/wal/wal)-nord.png created"
	echo "Setting wal..."
	if wal -q -a 95 -i ~/Wallpapers/nord/$(grep -Po "s/\K.*" ~/.cache/wal/wal)-nord.png ; then
		wal-discord -t
	        echo "Set: $(grep -Po "s/\K.*" ~/.cache/wal/wal)"		
	else
		echo "Failed: $(grep -Po "s/\K.*" ~/.cache/wal/wal)"
		MvManual
		echo "Use -u to undo"
	fi
else
echo "Could not Apply theme to: $(grep -Po "s/\K.*" ~/.cache/wal/wal)"
fi
}

Last(){
echo "Setting last wal..."
if wal -q -a 95 -i ~/Wallpapers/$(echo "$(<~/.cache/wallpaper.last)") ; then
#if wal -q -R ; then #wal -R doesn't seem to be working ATM.
        wal-discord -t
        echo "Set: $(grep -Po "s/\K.*" ~/.cache/wal/wal)"
else    
        echo "Failed: $(grep -Po "s/\K.*" ~/.cache/wal/wal)"
        mvManual
        echo "Use -u to undo"
fi
}

MvManual(){
mv ~/Wallpapers/$(grep -Po "s/\K.*" ~/.cache/wal/wal) ~/Wallpapers/manual
echo "$(grep -Po "s/\K.*" ~/.cache/wal/wal) moved to ~/Wallpapers/manual"
}

MvUndo(){
mv ~/Wallpapers/manual/$(grep -Po "s/\K.*" ~/.cache/wal/wal) ~/Wallpapers
echo "$(grep -Po "s/\K.*" ~/.cache/wal/wal) moved to ~/Wallpapers"
}

Help(){
echo "Syntax: [-r|c|n|l|h|m|u]"
echo
echo "Options:"
echo "r		Set random color scheme from ~/Wallpapers (Default operation)"
echo "c		Set custom color scheme from ~/Wallpapers"
echo "n		Applies nord theme to current wallpaper and sets"
echo "l		Set wallpaper to last used wallpaper."
echo "h		Print this Help"
echo "m		Move last set/failed wallpaper to ~/Wallpapers/manual"
echo "u		Used after m, undo moving wallpaper to manual folder" 
}

while getopts ":rcnlhmu" option; do
   case $option in
      r)Random
	exit;;

      c)Custom
	exit;;

      n)Nord
	exit;;

      l)Last
	exit;;
      
      h)Help 
	exit;;

      m)MvManual
	exit;;

      u)MvUndo
	exit;;
     
      \?)# Invalid option
         echo "Error: Invalid option"
	 Help
         exit;;
   esac
done
#if no arg given
Random
