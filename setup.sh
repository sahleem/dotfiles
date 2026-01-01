#!/bin/sh

# install packages
sudo pacman -Syu
sudo pacman -S $(cat packages.txt)

# change shell to ZSH
chsh -s $(which zsh)

# setup zsh
cp zsh/zprofile ~/.zprofile
cp zsh/zshrc ~/.zshrc

# setup autologin
sudo mkdir /etc/systemd/system/getty@tty1.service.d/
sudo cp autologin.conf /etc/systemd/system/getty@tty1.service.d/

# link config
CONFIG_DIR=$HOME/.config
ln -sf $PWD/kak/     $CONFIG_DIR/
ln -sf $PWD/niri/    $CONFIG_DIR/
ln -sf $PWD/foot/    $CONFIG_DIR/
#ln -sf $PWD/fish/    $CONFIG_DIR/
