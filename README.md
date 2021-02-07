# dotfiles

Install
------
* Clone repository
* Run setupscript.sh
* If you are installing on a fresh linux install, type "y" when promted

Configuration
-------------
This is a bare minimum setup, and you can now start configuring you linux install as you like. To configure the following elements, edit the corresponding file
* Keybinds -> ~/.i3/config
* Polybar -> ~/.config/polybar/config (if you change the name of the bar or add more bars, edit the polybar_launch.sh script in the same folder)
* Background and lockscreen -> Use application nitrogen
* Colors in terminal -> ~/.Xresources (run "xrdb ~/.Xresources" to apply changes)
* Zsh terminal theme -> line 5 in ~/.zshrc (find themes on https://github.com/ohmyzsh/ohmyzsh/wiki/Themes)
