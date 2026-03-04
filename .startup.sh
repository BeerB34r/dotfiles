#!/bin/zsh

# start processes
slack &!
discord &!
cp -f ~/Downloads/profile.png ~/.face
setxkbmap -option caps:escape
gsettings set org.gnome.desktop.default-applications.terminal exec '/home/mde-beer/.local/share/soar/bin/ghostty'
~/set_public_background.sh
