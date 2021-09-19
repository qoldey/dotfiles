alias yt="youtube-dl --add-metadata -i -o '~/Media/Video/Youtube/%(title)s.%(ext)s' "
alias yta="youtube-dl --embed-thumbnail -i -x --audio-format mp3 -o '~/Media/Music/Downloads/%(title)s.%(ext)s' "
alias config='cd ~/.config/ && ranger'
alias bashc='vim ~/.bashrc'
alias bonsai='cbonsai --live'
alias color='colors.sh'
alias neofetch='clear && neofetch'
alias theme='color && neofetch'
alias walc="wal.sh"
alias wallpapers='sxiv -t ~/Wallpapers/*'

alias wallpaper='grep -Po "s/\K.*" ~/.cache/wal/wal'
alias mvwal='mvwal.sh'
alias mvwalundo='mvwalundo.sh'
alias nordundo='wal -R'

alias nord='python ~/.config/ImageGoNord/src/cli.py'
alias nordify='autonordtheme-temp.sh'
alias nordkeep='autonordtheme.sh'
alias nordrm='autonordtheme-delete.sh'

