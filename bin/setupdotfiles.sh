#!/bin/bash
DIR="/home/micah/os-config"
echo 'Using' $DIR
ln $DIR/dotfiles/.tmux.conf ~/.tmux.conf
ln $DIR/dotfiles/.zshrc ~/.zshrc
ln $DIR/dotfiles/.vimrc ~/.vimrc
cp -al $DIR/dotfiles/.vim ~/.vim
cp -al $DIR/bin ~/bin
