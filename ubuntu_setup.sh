#!/bin/bash

############## Set toolbar at the bottom ##############
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM

############## Set toolbar icons to 36 ##############
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 36

############## Update apt ##############
sudo apt update


sudo apt install -y tilix git net-tools

############## Install VScode ##############
source ./vscode.sh

############## Install Paper Icons ##########
if [ $1 == "paper-icons" ];
then
    source ./papericons.sh
fi

############## Install Docker ##############
source ./docker.sh

############# Set my shortcuts ##############
source ./bindings.sh

############# Set Theme to dark mode ############## https://fostips.com/light-dark-command-ubuntu-22-04/
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

############# Change lockscreen ##############
############# Change background ##############


############# Install chromium ##############
