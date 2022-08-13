#!/usr/bin/env bash

salt=$RANDOM

apps="zsh terminator git qbittorrent emacs vim picom herbstluftwm rofi"

sudo apt update
sudo apt install $apps 

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mkdir -p ~/.tmp_$salt && cd ~/.tmp_$salt
git clone https://github.com/ny64/vim-setup
cp -R ./vim-setup/.* ~/

git clone https://github.com/ny64/dump && cd dump
mkdir -p ~/.config/herbstluftwm && cp ./herbstluftwm/* ~/.config/herbstluftwm
mkdir -p ~/.config/gtk-3.0 && cp ./gtk-3.0/* ~/.config/gtk-3.0
cp ./picom/picom.conf ~/.config/
cp -R ./emacs/.* ~/
cp -R ./terminator ~/.config/
sudo mkdir -p /etc/X11/xorg.conf.d && sudo cp ./X11/* /etc/X11/xorg.conf.d
cp ./zsh/.zshrc ~/

rm -rf ~/.tmp_$salt

