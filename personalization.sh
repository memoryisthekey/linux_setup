#!/bin/bash

# Set Theme to dark mode  https://fostips.com/light-dark-command-ubuntu-22-04/
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# Change background 
#gsettings set org.gnome.desktop.background picture-uri-dark 'file:///home/'$USER'/Pictures/Wallpapers/1152333.jpg'

#remove folders I never use
rm -rf ~/Music && rm -rf ~/Templates && rm -rf ~/Public && rm -rf ~/Videos

# Set toolbar at the bottom 
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM

# Set toolbar icons to 32
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32

cd ~/.config && mkdir -p tilix/schemes/ && cd ..
# Get tilix themes
wget  -qO $HOME"/.config/tilix/schemes/belafonte-day.json" https://git.io/v7Q25 
wget  -qO $HOME"/.config/tilix/schemes/seafoam-pastel.json" https://git.io/v7QVW
wget  -qO $HOME"/.config/tilix/schemes/tomorrow-night-bright.json" https://git.io/v7QVq
wget  -qO $HOME"/.config/tilix/schemes/japanesque.json" https://git.io/v7QaE
wget  -qO $HOME"/.config/tilix/schemes/afterglow.json" https://git.io/v7QVD
wget  -qO $HOME"/.config/tilix/schemes/atom.json" https://git.io/v7Q27
wget  -qO $HOME"/.config/tilix/schemes/alien-blood.json" https://git.io/v7QVk

# Add my bash profile
mv ./.bash_profile ~/.bash_profile
echo "source .bash_profile" >> ~/.bashrc