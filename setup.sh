#!/bin/sh

# add apk packages
#cat apk-packages.txt | sudo apk add

# change shell to ZSH
chsh -s $(which zsh)

# setup autologin
mkdir /etc/systemd/system/getty@tty1.service.d/
cp autologin.conf /etc/systemd/system/getty@tty1.service.d/

# link config
#sudo ln -sf $PWD/profile /etc/profile
ln -sf $PWD/kak/     $HOME/.config/
ln -sf $PWD/niri/    $HOME/.config/
ln -sf $PWD/zsh/.*   $ZDOTDIR/
