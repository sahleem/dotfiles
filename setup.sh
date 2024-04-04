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

# stow
stow nvim
stow picom
stow kitty
stow feh
stow openbox
stow polybar
stow sxhkd
stow xinit
stow zsh
