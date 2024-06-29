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

# kitten color config from Xresources
echo "" > $PWD/kitty/colors.conf
xrdb -q | sed -e 's/*.//' -e 's/:*.#/ #/' $line >> $PWD/kitty/colors.conf

# link config
ln -sf $PWD/nvim/ $HOME/.config/
ln -sf $PWD/picom/ $HOME/.config/
ln -sf $PWD/kitty/ $HOME/.config/
ln -sf $PWD/feh/ $HOME/.config/
ln -sf $PWD/openbox/ $HOME/.config/
ln -sf $PWD/polybar/ $HOME/.config/
ln -sf $PWD/sxhkd/ $HOME/.config/
ln -sf $PWD/xinit/.* $HOME/
ln -sf $PWD/zsh/.* $HOME/
