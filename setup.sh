#!/bin/sh

# check if path is correct
# looks useless, but requires test to guarantee
if [[ $(pwd) != "$HOME/dotfiles" ]]; then
	echo "ERROR: invalid location"
	exit 1
fi

# check for errors
# TODO: also needs to check if theme exists
if [[ $1 == "" ]]; then
	echo "ERROR: no theme selected"
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

# set Xresources
xrdb $PWD/themes/$1
ln -sf $PWD/themes/$1 $HOME/.Xresources

# kitten color config from Xresources
echo "" > $PWD/kitty/colors.conf
xrdb -q | sed -e 's/*.//' -e 's/:*.#/ #/' $line >> $PWD/kitty/colors.conf

# link config
ln -sf $PWD/nvim/ $HOME/.config/
ln -sf $PWD/kak/ $HOME/.config/
ln -sf $PWD/niri/ $HOME/.config/
ln -sf $PWD/picom/ $HOME/.config/
ln -sf $PWD/kitty/ $HOME/.config/
ln -sf $PWD/feh/ $HOME/.config/
ln -sf $PWD/openbox/ $HOME/.config/
ln -sf $PWD/polybar/ $HOME/.config/
ln -sf $PWD/sxhkd/ $HOME/.config/
ln -sf $PWD/xinit/.* $HOME/
ln -sf $PWD/zsh/.* $HOME/
