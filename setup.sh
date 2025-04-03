#!/bin/sh

# add apk packages
cat apk-packages.txt | doas apk add

# change shell to ZSH
chsh -s $(which zsh)

# link config
ln -sf $PWD/kak/ $HOME/.config/
ln -sf $PWD/niri/ $HOME/.config/
#ln -sf $PWD/zsh/.* $HOME/
