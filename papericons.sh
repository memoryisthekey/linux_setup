#!/bin/bash

echo "Attempting to Install Paper Icons"
sudo add-apt-repository -y -u ppa:snwh/ppa
sudo apt update
sudo apt install paper-icon-theme
sudo add-apt-repository universe -y
sudo apt install gnome-tweaks