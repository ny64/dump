#!/usr/bin/env bash

salt=$RANDOM

apps="zsh terminator git qbittorrent emacs vim picom herbstluftwm rofi"

sudo apt update
sudo apt install $apps 

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mkdir -p ~/.tmp_$salt && cd ~/.tmp_$salt
git clone https://github.com/ny64/vim-setup
echo "cp -R ./vim-setup/.vim* ~/"
read  -n 1 -p "Input Selection:" mainmenuinput
cp -R ./vim-setup/.vim* ~/

git clone https://github.com/ny64/dump && cd dump

echo "mkdir -p ~/.config/herbstluftwm && cp ./herbstluftwm/* ~/.config/herbstluftwm"
read  -n 1 -p "Input Selection:" mainmenuinput
mkdir -p ~/.config/herbstluftwm && cp ./herbstluftwm/* ~/.config/herbstluftwm

echo "mkdir -p ~/.config/gtk-3.0 && cp ./gtk-3.0/* ~/.config/gtk-3.0"
read  -n 1 -p "Input Selection:" mainmenuinput
mkdir -p ~/.config/gtk-3.0 && cp ./gtk-3.0/* ~/.config/gtk-3.0

echo "cp ./picom/picom.conf ~/.config/"
read  -n 1 -p "Input Selection:" mainmenuinput
cp ./picom/picom.conf ~/.config/

echo "cp -R ./emacs/.emacs* ~/"
read  -n 1 -p "Input Selection:" mainmenuinput
cp -R ./emacs/.emacs* ~/

echo "cp -R ./terminator ~/.config/"
read  -n 1 -p "Input Selection:" mainmenuinput
cp -R ./terminator ~/.config/

echo "sudo mkdir -p /etc/X11/xorg.conf.d && sudo cp ./X11/* /etc/X11/xorg.conf.d"
read  -n 1 -p "Input Selection:" mainmenuinput
sudo mkdir -p /etc/X11/xorg.conf.d && sudo cp ./X11/* /etc/X11/xorg.conf.d

echo "cp ./zsh/.zshrc ~/"
read  -n 1 -p "Input Selection:" mainmenuinput
cp ./zsh/.zshrc ~/

echo "rm -rf ~/.tmp_$salt"
read  -n 1 -p "Input Selection:" mainmenuinput
rm -rf ~/.tmp_$salt

