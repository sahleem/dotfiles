#!/bin/sh

# add apk packages
#cat apk-packages.txt | sudo apk add

# change shell to FISH
chsh -s $(which zsh)

# setup autologin
sudo mkdir /etc/systemd/system/getty@tty1.service.d/
sudo cp autologin.conf /etc/systemd/system/getty@tty1.service.d/

# link config
ln -sf $PWD/kak/     $HOME/.config/
ln -sf $PWD/niri/    $HOME/.config/
ln -sf $PWD/foot/    $HOME/.config/
#ln -sf $PWD/fish/    $HOME/.config/
ln -sf $PWD/zsh/.*   $ZDOTDIR/
