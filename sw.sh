#!/bin/bash

sudo apt install -y tilix git net-tools

#Add ssh key and .ssh folder
#https://stackoverflow.com/questions/3659602/automating-enter-keypresses-for-bash-script-generating-ssh-keys
ssh-keygen -t rsa  -b 4096 -N "" -f /home/$USER/.ssh/id_rsa

############# Install chromium ##############
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
sudo dpkg -i google-chrome-stable_current_amd64.deb 
