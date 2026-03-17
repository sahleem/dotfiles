#!/bin/sh

# install packages
sudo pacman -Syu $(cat packages.txt)

# change shell to ZSH
[ "$SHELL" != "$(command -v zsh)" ] && chsh -s $(command -v zsh)

# setup autologin
sudo mkdir -p /etc/systemd/system/getty@tty1.service.d/
sudo cp autologin.conf /etc/systemd/system/getty@tty1.service.d/

# copy config
CONFIG_DIR=$HOME/.config
mkdir -p $CONFIG_DIR
cp zsh/zprofile  $HOME/.zprofile
cp zsh/zshrc     $HOME/.zshrc
cp kak/          $CONFIG_DIR/
cp niri/         $CONFIG_DIR/
cp foot/         $CONFIG_DIR/
#cp fish/         $CONFIG_DIR/
