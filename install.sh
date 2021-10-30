#!/bin/bash

# Install new packages and remove undesirable ones
sudo pacman -S firefox neovim git zip unzip papirus-icon-theme gimp 
sudo pacman -R xfce4-taskmanager

# Add Dracula GTK theme
mkdir ~/.themes 
cd ~/.themes
wget https://github.com/dracula/gtk/releases/download/v2.0/Dracula.tar.xz 
tar -xvf Dracula.tar.xz
rm Dracula.tar.xz

# Add borderless xfwm theme
cd ~/.themes
wget https://dl3.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE0NjA3NjYyOTEiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6IjRmZWMyNmM5MDU0YmIwNTMzYzk1YzFjYTU1Y2I5M2Y2ZDYwOWMwNDMyZDkzZjcyODZkOWVjY2NjZmQ1NTkyMzY4NmMzODBmZmJlZWZlYmFiYTQ2ZThlMzQ5MTkyMzRjOGU0OTU0ZDFjOWEyNWMyZTlmYmY3M2JmNGViNTg4OGRkIiwidCI6MTYzNTQ1NjYwOCwic3RmcCI6IjQ0YzkwZjg3MGZlZGYyNWVhOWNlNGFlZDFkZTNiMzJhIiwic3RpcCI6IjI2MDM6MzAwNzoxZTk4OjA6ZTk1NDoxYjM2OjI1YmY6NDZjYyJ9.Q4ok8AFTjMSyhc7ZkxtoylL7sNHEVjGQrmHcbfbI2fs/140039-border-only.tar.gz
tar -xvf 140039-border-only.tar.gz
rm 140039-border-only.tar.gz

# Add Plank doc theme
cd ~/.local/share/plank/themes
wget https://dl3.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MjY5NDc3NjEiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6IjhhY2VkZDQxMzkxOTI4NTYxZTA5ZTFiZTk0NTI0ZTI4MjU1NWY3NjAyODI4ODM4MjE5NmNhZDU2NzIxOTQwNGJiYzQ1Yzg1NTQ5MGEzYWMyZDY4MDVlMmQ1ZjZiMGUxYzcxYmMxNWJlYjA5MTg0YzRmNzdjYWE4NzllYWVjMmZlIiwidCI6MTYzNTYwNzE0OCwic3RmcCI6IjE5ZGQ0MDg4MjcwNGNiNjQ1YmMzMTkxYTZiNWRhMTg2Iiwic3RpcCI6IjI2MDM6MzAwNzoxZTk4OjA6ZmQwMToxOWQ3OmZjY2U6ZmYzNSJ9.PCkcfN_YoEV1zbnX-fXmnAblfHhdee5bA6sd2LlBcws/Lumi_Pill.tar.xz
tar -xvf Lumi_Pill.tar.xz
rm Lumi_Pill.tar.xz

