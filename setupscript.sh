#!/bin/bash
sudo pacman -Syu --noconfirm
sudo pacman -S chromium rofi polybar --noconfirm 
sudo rm -rf ~/usr/share/conky
sudo rm -rf ~/usr/bin/start_conkey_grey
sudo rm -rf ~/usr/bin/start_conkey_green
sudo rm -rf ~/usr/bin/start_conkey_live_green
sudo rm -rf ~/usr/bin/start_conkey_live_grey
sudo rm -rf ~/usr/bin/start_conkey_live_maia
sudo rm -rf ~/usr/bin/start_conkey_live_solarized
sudo rm -rf ~/usr/bin/start_conkey_maia
sudo rm -rf ~/usr/bin/start_conkey_solarized
yay -S ttf-iosevka --removemake --nocleanmenu --nodiffmenu --noeditmenu
yes | cp .Xresources ~
yes | cp config ~/.i3/

sudo mkdir ~/.config/polybar
sudo cp /usr/share/doc/polybar/config ~/.config/polybar
sudo chown "$USER:$USER" ~/.config/polybar/config
