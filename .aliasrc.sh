alias \
	yt="youtube-dl --add-metadata -i -o '~/Media/Video/Youtube/%(title)s.%(ext)s' " \
	yta="youtube-dl --embed-thumbnail -i -x --audio-format mp3 -o '~/Media/Music/Downloads/%(title)s.%(ext)s' " \
	spotdl="spotdl -o ~/Media/Music/Downloads/" \
	\
	ls='ls --color=auto --group-directories-first' \
	r='ranger' \
	sr='sudo ranger .' \
	src='source ~/.bashrc' \
	shh="touch script.sh; chmod +x script.sh; echo $'#/bin/sh\n\n' >> script.sh; vim +3 script.sh;" \
	her='espeak-ng -a 50 -g 5ms -s 175 -p 40 -v her -w output.wav -f' \
	\
	config='cd ~/.config/ && ranger' \
	scripts='cd ~/Scripts && ranger' \
	dev='cd ~/dev/ && ranger' \
	\
	keybinds='vim ~/.config/sxhkd/sxhkdrc' \
	brc='vim ~/.bashrc' \
	arc='vim ~/.aliasrc.sh' \
	vrc='vim ~/.vimrc' \
	startpage='vim ~/github/startpage/index.html' \
	bspwmrc="vim ~/.config/bspwm/bspwmrc" \
	bib='vim ~/dev/tex/index.bib' \
	\
	shrug="echo '¯\_(ツ)_/¯' && echo '¯\_(ツ)_/¯' | xclip -selection clipboard" \
	adba='adb.sh' \
	bonsai='cbonsai --live' \
	neofetch='clear && neofetch' \
	theme='theme.sh' \
	\
	nord='python ~/.config/ImageGoNord/src/cli.py' \
	\
	cmus='screen -q -r -D cmus || screen -S cmus $(which --skip-alias cmus)' \
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

