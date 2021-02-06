#!/bin/bash
echo "Updating system and installing packages"
sudo pacman -Syu --noconfirm
sudo pacman -S chromium rofi polybar --noconfirm 
yay -S ttf-iosevka --removemake --nocleanmenu --nodiffmenu --noeditmenu
echo "Removing default conky widgets on desktop"
sudo rm -rf ~/usr/share/conky
sudo rm -rf ~/usr/bin/start_conkey_grey
sudo rm -rf ~/usr/bin/start_conkey_green
sudo rm -rf ~/usr/bin/start_conkey_live_green
sudo rm -rf ~/usr/bin/start_conkey_live_grey
sudo rm -rf ~/usr/bin/start_conkey_live_maia
sudo rm -rf ~/usr/bin/start_conkey_live_solarized
sudo rm -rf ~/usr/bin/start_conkey_maia
sudo rm -rf ~/usr/bin/start_conkey_solarized
echo "Moving files from github repository into this setup"
yes | cp .Xresources ~
yes | cp config ~/.i3/
sudo rm -rf ~/.config/polybar
mkdir ~/.config/polybar
cp ./polybar/config ~/.config/polybar/
#sudo chown "$USER:$USER" ~/.config/polybar/config
yes | cp ./polybar/polybar_launch.sh ~/.config/polybar/

