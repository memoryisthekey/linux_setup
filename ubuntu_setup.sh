#!/bin/bash

############## Update apt ##############
sudo apt update
source ./sw.sh

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

############# Personalization ###############
source ./personalization.sh



