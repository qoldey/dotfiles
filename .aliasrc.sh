#TODO section these



alias ssr='sudo systemctl restart'
alias sss='sudo systemctl status'
alias loip="ifconfig enp34s0 | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias draw='process="$(pidof /usr/bin/gromit-mpx)"; if [ -z $process ]; then gromit-mpx -a; else sudo kill -15 $process; fi'
alias yt="yt-dlp --embed-metadata -i -o '/mnt/2TH/Video/YouTube/%(title)s.%(ext)s' " 
alias yta="yt-dlp --embed-thumbnail -i -x --audio-format mp3 -o '~/Media/Music/Downloads/%(title)s.%(ext)s' "
alias spt="spotdl -o ~/Media/Music/Downloads/"
alias mnt='sudo mount' 
alias pico='sudo minicom -o --term=linux -D /dev/ttyACM*' 
alias vpico='sudo vim /mnt/pico/code.py' 
alias lss="find . -maxdepth 1 -type l -ls | cut -c$(expr length "$USER" "*" 2 + 65 )-" 
alias ls='ls --color=auto --group-directories-first' 
alias sp='sudo pacman' 
alias sps='sudo pacman -S' 
alias s='systemctl' 
alias r='ranger' 
alias sr='sudo ranger .' 
alias src='source ~/.bashrc' 
alias shh="cd ~/Scripts && touch script.sh; chmod +x script.sh; echo $'#/bin/sh\n\n' >> script.sh; vim +3 script.sh;" 
alias conf='ranger ~/.config' 
alias scr='ranger ~/Scripts' 
alias dev='cd ~/dev/ && ranger' 
alias keys='vim ~/.config/sxhkd/sxhkdrc' 
alias brc='vim ~/.bashrc' 
alias arc='vim ~/.aliasrc.sh' 
alias vrc='vim ~/.vimrc' 
alias startpage='vim ~/github/startpage/index.html' 
alias bspwmrc="vim ~/.config/bspwm/bspwmrc" 
alias herbrc="vim ~/.config/herbstluftwm/autostart" 
alias xinitrc="vim ~/.xinitrc" 
alias bib='vim ~/dev/tex/index.bib' 
alias shrug="echo '¯\_(ツ)_/¯' && echo '¯\_(ツ)_/¯' | xclip -selection clipboard" 
alias adba='adb.sh' 
alias bonsai='cbonsai --live' 
alias neofetch='clear && neofetch' 
alias wallpaper='grep -Po "s/\K.*" ~/.cache/wal/wal' 
alias acmus='screen -q -r -D cmus || screen -S cmus $(which --skip-alias cmus)' 
alias theme='theme.sh' 
alias nord='python ~/.config/ImageGoNord/src/cli.py' 
alias rar='tar -czvf output.tgz' 
alias untar='tar -xvzf' 
alias jarr='java -jar --enable-preview' 
alias submit='submit.sh' 

#TextColors
txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White

alias update='sudo pacman -Syu'
