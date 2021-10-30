#!/bin/bash

# Install new packages and remove undesirable ones
sudo pacman -S firefox neovim git zip unzip papirus-icon-theme gimp 
sudo pacman -R xfce4-taskmanager

# Clone the configuration directories from github
cd
git clone https://github.com/areif-dev/xfce-dots.git

# Add Border Only window manager theme
mkdir ~/.themes
mv ~/xfce-dots/border-only-wm-theme ~/.themes/border-only

# Add pill shaped Plank theme
mkdir -p ~/.local/share/plank/themes
mv ~/xfce-dots/plank-pill-theme ~/.local/share/plank/themes/'AJ Pill'

# Add Dracula GTK theme
mv ~/xfce-dots/Dracula-slim-standard-buttons ~/.themes

