#!/bin/sh

# check if path is correct
if [[ $(pwd) != "$HOME/dotfiles" ]]; then
	echo "ERROR: invalid location"
	exit 1
fi

# enable multilib
sudo sed -i '/^#\[multilib\]/s/^#//g' /etc/pacman.conf
sudo sed -i '/^\[multilib\]/{n;s/^#//}' /etc/pacman.conf
sudo pacman -Syu

# install requirements
sudo pacman -S $(cat pacman-packages.txt)

# change shell to ZSH
chsh -s $(which zsh)

# create default directories
xdg-user-dirs-update

# link config
ln -sf $PWD/nvim/.* $PWD/..
ln -sf $PWD/picom/.* $PWD/..
ln -sf $PWD/kitty/.* $PWD/..
ln -sf $PWD/feh/.* $PWD/..
ln -sf $PWD/openbox/.* $PWD/..
ln -sf $PWD/polybar/.* $PWD/..
ln -sf $PWD/sxhkd/.* $PWD/..
ln -sf $PWD/xinit/.* $PWD/..
ln -sf $PWD/zsh/.* $PWD/..
