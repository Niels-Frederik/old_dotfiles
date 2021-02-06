#!/bin/bash
sudo pacman -Syu -y
sudo pacman -S chromium -y
sudo pacman -S rofi -y
sudo rm -rf /usr/share/conky
sudo rm -rf /usr/bin/start_conkey_grey
sudo rm -rf /usr/bin/start_conkey_green
sudo rm -rf /usr/bin/start_conkey_live_green
sudo rm -rf /usr/bin/start_conkey_live_grey
sudo rm -rf /usr/bin/start_conkey_live_maia
sudo rm -rf /usr/bin/start_conkey_live_solarized
sudo rm -rf /usr/bin/start_conkey_maia
sudo rm -rf /usr/bin/start_conkey_solarized
#yay iosevka option 2
