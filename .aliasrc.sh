alias \
	draw='process="$(pidof /usr/bin/gromit-mpx)"; if [ -z $process ]; then gromit-mpx -a; else sudo kill -15 $process; fi' \
	yt="youtube-dl --add-metadata -i -o '~/Media/Video/Youtube/%(title)s.%(ext)s' " \
	yta="youtube-dl --embed-thumbnail -i -x --audio-format mp3 -o '~/Media/Music/Downloads/%(title)s.%(ext)s' " \
	spotdl="spotdl -o ~/Media/Music/Downloads/" \
	\
	mnt='sudo mount' \
	pico='sudo minicom -o --term=linux -D /dev/ttyACM*' \
	vpico='sudo vim /mnt/pico/code.py' \
	lss="find . -maxdepth 1 -type l -ls | cut -c$(expr length "$USER" "*" 2 + 65 )-" \
	ls='ls --color=auto --group-directories-first' \
	sp='sudo pacman' \
	sps='sudo pacman -S' \
	s='systemctl' \
	r='ranger' \
	sr='sudo ranger .' \
	src='source ~/.bashrc' \
	shh="cd ~/Scripts && touch script.sh; chmod +x script.sh; echo $'#/bin/sh\n\n' >> script.sh; vim +3 script.sh;" \
	\
	cdr="cd $1 && ranger" \
	conf='cd ~/.config/ && ranger' \
	scr='vim ~/Scripts' \
	dev='cd ~/dev/ && ranger' \
	\
	keys='vim ~/.config/sxhkd/sxhkdrc' \
	brc='vim ~/.bashrc' \
	arc='vim ~/.aliasrc.sh' \
	vrc='vim ~/.vimrc' \
	startpage='vim ~/github/startpage/index.html' \
	bspwmrc="vim ~/.config/bspwm/bspwmrc" \
	herbrc="vim ~/.config/herbstluftwm/autostart" \
	xinitrc="vim ~/.xinitrc" \
	bib='vim ~/dev/tex/index.bib' \
	\
	shrug="echo '¯\_(ツ)_/¯' && echo '¯\_(ツ)_/¯' | xclip -selection clipboard" \
	adba='adb.sh' \
	bonsai='cbonsai --live' \
	neofetch='clear && neofetch' \
	wallpaper='grep -Po "s/\K.*" ~/.cache/wal/wal' \
	cmus='screen -q -r -D cmus || screen -S cmus $(which --skip-alias cmus)' \
	theme='theme.sh' \
	\
	nord='python ~/.config/ImageGoNord/src/cli.py' \
	\
	rar='tar -czvf output.tgz' \
	unrar='tar -xvzf' \
	jarr='java -jar --enable-preview' \
	submit='submit.sh' \
\


#TextColors
txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White

