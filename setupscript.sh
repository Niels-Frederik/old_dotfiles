#!/bin/bash

#Input 'n' to skip installing, updating and creating directories
#But only transfer files from this directory into user settings

read -n1 -p "Is this the first time running this script on this install? [Y,n]" input
echo

if [[ $input == "Y" || $input == "y" ]]; then
	sudo pacman -Syu --noconfirm
	sudo pacman -S chromium rofi polybar --noconfirm 
	yay -S ttf-iosevka --removemake --nocleanmenu --nodiffmenu --noeditmenu
	sudo rm -rf ~/usr/share/conky
	sudo rm -rf ~/usr/bin/start_conkey_grey
	sudo rm -rf ~/usr/bin/start_conkey_green
	sudo rm -rf ~/usr/bin/start_conkey_live_green
	sudo rm -rf ~/usr/bin/start_conkey_live_grey
	sudo rm -rf ~/usr/bin/start_conkey_live_maia
	sudo rm -rf ~/usr/bin/start_conkey_live_solarized
	sudo rm -rf ~/usr/bin/start_conkey_maia
	sudo rm -rf ~/usr/bin/start_conkey_solarized
	sudo rm -rf ~/.config/polybar
	mkdir ~/.config/polybar
	#sudo chown "$USER:$USER" ~/.config/polybar/config
fi;
yes | cp .Xresources ~
yes | cp config ~/.i3/
cp ./polybar/config ~/.config/polybar/
yes | cp ./polybar/polybar_launch.sh ~/.config/polybar/
yes | cp .vimrc ~
xrdb ~/.Xresources
i3-msg reload

if [[ $input == "Y" || $input == "y" ]]; then
  read -n1 -p "Fresh setup requires restart, would you like to reboot now [Y,n]" shouldrestart 
  echo
  if [[ $shouldrestart == "Y" || $shouldrestart == "y" ]]; then
  sudo reboot now
  fi;
fi;
