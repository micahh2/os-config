#!/bin/bash
DIR="/home/micah/os-config"

echo 'Using' $DIR

ln $DIR/dotfiles/.tmux.conf ~/.tmux.conf
ln $DIR/dotfiles/.zshrc ~/.zshrc
ln $DIR/dotfiles/.vimrc ~/.vimrc

if [ ! -d ~/.config/autostart ];
then
    if [ ! -d ~/.config ];
    then
        mkdir ~/.config
    fi
    mkdir ~/.config/autostart
fi

ln $DIR/useful/syncthing.desktop ~/.config/autostart

mkdir ~/.vim
cp -al $DIR/dotfiles/.vim/* ~/.vim/

mkdir ~/bin
cp -al $DIR/bin/* ~/bin/

if [ $SHELL != $(which zsh) ];
then
    chsh -s $(which zsh)
fi
