#!/bin/sh

# check if path is correct
if [[ $(pwd) != "$HOME/dotfiles" ]]; then
	echo "ERROR: invalid location"
	exit 1
fi

# enable multilib
sed -i '/^#\[multilib\]/s/^#//g' /etc/pacman.conf
sed -i '/^\[multilib\]/{n;s/^#//}' /etc/pacman.conf

# install requirements
sudo pacman -S $(cat install.txt)

# change shell to ZSH
chsh -s $(which zsh)

# create default directories
xdg-user-dirs-update

# stow
stow kitty
stow openbox
stow polybar
stow sxhkd
#stow xinit
stow zsh
