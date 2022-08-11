#!/usr/bin/env bash

apps="zsh terminator git qbittorrent emacs vim picom herbstluftwm"

sudo apt update
sudo apt install $apps 

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mkdir -p ~/.tmp && cd ~/.tmp
git clone https://github.com/ny64/vim-setup
cp vim-setup/.* ~/

git clone https://github.com/ny64/dump
mkdir -p ~/.config/herbstluftwm && cp dump/herbstluftwm/* ~/.config/herbstluftwm
mkdir -p "~/.config/gtk-3.0" && cp "dump/gtk-3.0/*" "~/.config/gtk-3.0"
cp picom/picom.conf ~/.config/
cp emacs/.* ~/
cp -R terminator ~/.config/
sudo mkdir -p /etc/X11/xorg.conf.d && sudo cp X11/* /etc/X11/xorg.conf.d
cp zsh/.zshrc ~/

