#!/bin/sh

# check if path is correct
if [[ $(pwd) != "$HOME/dotfiles" ]]; then
	echo "ERROR: invalid location"
	exit 1
fi

# install requirements
sudo pacman -S $(cat install.txt)

# change shell to ZSH
chsh -s $(which zsh)

# stow
stow kitty
stow openbox
stow polybar
stow sxhkd
stow xinit
stow zsh
