#!/data/data/com.termux/files/usr/bin/bash
pkg install -y root-repo 
pkg install -y git tsu python wpa-supplicant pixiewps iw

git clone --depth 1 https://github.com/5hojib/wifee house

chmod +x house/wifee.py

printf "All done! Now you can run wifee with\n#   sudo python wifee.py -i wlan0 -K\n#\n#  To update, run\n#   (cd house && git pull"
