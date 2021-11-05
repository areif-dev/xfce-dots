#!/bin/bash

# Sync packages
sudo pacman -Syu

# Install new packages and remove undesirable ones
sudo pacman -S firefox neovim git zip unzip papirus-icon-theme gimp python-pip
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

# Configure Neovim
python3 -m pip install --user --upgrade pynvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir ~/.config/nvim/
mv ~/xfce-dots/nvim/init.vim ~/.config/nvim/init.vim


