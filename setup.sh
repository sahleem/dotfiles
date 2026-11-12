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
cp zsh/zprofile      $HOME/.zprofile
cp zsh/zshrc        $HOME/.zshrc
cp -r kak/          $CONFIG_DIR/
cp -r niri/         $CONFIG_DIR/
cp -r foot/         $CONFIG_DIR/
#cp -r fish/         $CONFIG_DIR/

LIBREWOLF_CONFIG_DIR=$CONFIG_DIR/librewolf/librewolf
mkdir -p $LIBREWOLF_CONFIG_DIR
cp librewolf/librewolf.overrides.cfg $LIBREWOLF_CONFIG_DIR/
#cp librewolf/userChrome.css $LIBREWOLF_CONFIG_DIR/<profile>/chrome/
cp librewolf/user-dirs.dirs $CONFIG_DIR/
