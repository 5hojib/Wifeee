#!/data/data/com.termux/files/usr/bin/bash
pkg install -y root-repo 
pkg install -y git tsu python wpa-supplicant pixiewps iw

git clone --depth 1 https://github.com/5hojib/Wifeee

chmod +x Wifee/boom.py

printf "All done! Now you can run WifeOrWifi with\n#   sudo python WifeOrWifi.py -i wlan0 -K\n"
