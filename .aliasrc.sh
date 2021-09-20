alias \
	yt="youtube-dl --add-metadata -i -o '~/Media/Video/Youtube/%(title)s.%(ext)s' " \
	yta="youtube-dl --embed-thumbnail -i -x --audio-format mp3 -o '~/Media/Music/Downloads/%(title)s.%(ext)s' " \
	config='cd ~/.config/ && ranger' \
	sxhkdrc='vim ~/.config/sxhkd/sxhkdrc' \
	bashrc='vim ~/.bashrc' \
	vimrc='vim ~/.vimrc' \
	bonsai='cbonsai --live' \
	color='colors.sh' \
	neofetch='clear && neofetch' \
	theme='color && neofetch' \
	\
	walc="wal.sh" \
	wallpapers='sxiv -t ~/Wallpapers/*' \
	wallpaper='grep -Po "s/\K.*" ~/.cache/wal/wal' \
	mvwal='mvwal.sh' \
	mvwalundo='mvwalundo.sh' \
	\
	nordundo='wal -R' \
	nord='python ~/.config/ImageGoNord/src/cli.py' \
	nordify='autonordtheme-temp.sh' \
	nordkeep='autonordtheme.sh' \
	nordrm='autonordtheme-delete.sh' \
	\
	cmus='screen -q -r -D cmus || screen -S cmus $(which --skip-alias cmus)' \
