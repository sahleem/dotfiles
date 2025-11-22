#!/bin/sh

# add apk packages
#cat apk-packages.txt | sudo apk add

# change shell to FISH
chsh -s $(which zsh)

# setup autologin
sudo mkdir /etc/systemd/system/getty@tty1.service.d/
sudo cp autologin.conf /etc/systemd/system/getty@tty1.service.d/

# setup ZDOTDIR
CONFIG_DIR=$HOME/.config
echo -e "\n# set ZDOTDIR\nexport ZDOTDIR=$CONFIG_DIR/zsh/" | sudo tee -a /etc/profile > /dev/null

# link config
ln -sf $PWD/kak/     $CONFIG_DIR/
ln -sf $PWD/niri/    $CONFIG_DIR/
ln -sf $PWD/foot/    $CONFIG_DIR/
ln -sf $PWD/zsh/     $CONFIG_DIR/
