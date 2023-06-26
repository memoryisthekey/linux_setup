#!/bin/bash

#https://blog.programster.org/using-the-cli-to-set-custom-keyboard-shortcuts

BEGINNING="gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"

KEY_PATH="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings \
"['$KEY_PATH/custom0/', '$KEY_PATH/custom1/']"

# Set tilix to ctrl+alt+t
$BEGINNING/custom0/ name "Tilix"
$BEGINNING/custom0/ command "tilix"
$BEGINNING/custom1/ binding "<Control><Alt>t"

# System monitor ctrl+alt+q
$BEGINNING/custom1/ name "System Monitor"
$BEGINNING/custom1/ command "gnome-system-monitor"
$BEGINNING/custom1/ binding "<Control><Alt>q"

