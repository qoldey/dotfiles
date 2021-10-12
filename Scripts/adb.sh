#/bin/sh

adb start-server

adb connect 192.168.1.132:5555

adb push ~/Media/Music/Downloads/* sdcard/Music

list="$(ls ~/Media/Music/Downloads/)"

echo -e "Pushed:\n$list\nto mobile."

mv ~/Media/Music/Downloads/* ~/Media/Music/active/

echo "Moved new music to /active."

cmus-remote -l ~/Media/Music/active/
cmus-remote -C "update-cache f"
adb disconnect

