#!/bin/bash
DIR="$HOME/os-config"

echo 'Using' $DIR

# Actual dotfiles
ln $DIR/dotfiles/.tmux.conf ~/.tmux.conf
ln $DIR/dotfiles/.zshrc ~/.zshrc
ln $DIR/dotfiles/.profile ~/.profile

if [ ! -d ~/.config ];
then
	mkdir ~/.config
fi

# Syncthing
if [ ! -d ~/.config/autostart ];
then
    mkdir ~/.config/autostart
fi

ln $DIR/useful/syncthing.desktop ~/.config/autostart

# Neovim
if [ ! -d ~/.config/nvim ];
then
    mkdir ~/.config/nvim
fi
cp -al $DIR/dotfiles/nvim/* ~/.config/nvim/

# Bin
mkdir ~/bin
cp -al $DIR/bin/* ~/bin/

# Zsh
if [ $SHELL != '/bin/zsh' ];
then
    chsh -s $(which zsh)
fi
