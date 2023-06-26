#!/bin/bash

############## Set toolbar at the bottom ##############
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM

############## Set toolbar icons to 36 ##############
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 36

############## Update apt ##############
sudo apt update


############## Install tilix ##############
sudo apt install tilix -y

############## Install VScode ##############
sudo apt install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code

############## Install git ##############
sudo apt install git


############## Install Paper Icons ##########
if [ $1 == "paper-icons" ];
then
    echo "Attempting to Install Paper Icons"
   sudo add-apt-repository -y -u ppa:snwh/ppa
   sudo apt update
   sudo apt install paper-icon-theme
   sudo add-apt-repository universe -y
   sudo apt install gnome-tweak-tool
fi

############## Install net-tools ##############
sudo apt install net-tools


############## Install Docker ##############
sudo apt update
sudo apt install ca-certificates curl gnupg

# Add Docker’s official GPG key:
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Use the following command to set up the repository:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install latest docker
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Post installation docker steps
sudo groupadd docker
sudo usermod -aG docker $USER



############# Change lockscreen ##############
############# Change background ##############

############# Set my shortcuts ##############
source ./bindings.sh

############# Install chromium ##############
