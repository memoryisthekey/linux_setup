#!/bin/bash

echo "Attempting to Install Paper Icons"
sudo apt-get install paper-icon-theme
sudo add-apt-repository universe -y
sudo apt install gnome-tweaks


# Set two fingers on mouse pad to right click
gsettings set org.gnome.desktop.peripherals.touchpad click-method 'fingers'

# Set Icons and mouse to Paper Icons
gsettings set org.gnome.desktop.interface icon-theme 'Paper'
gsettings set org.gnome.desktop.interface cursor-theme 'Paper'
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
