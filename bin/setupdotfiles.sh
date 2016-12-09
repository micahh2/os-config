#!/bin/bash
DIR=`dirname $0`
ln $DIR/../dotfiles/.tmux.conf ~/.tmux.conf
ln $DIR/../dotfiles/.zshrc ~/.zshrc
ln $DIR/../dotfiles/.vimrc ~/.vimrc
cp -al $DIR/../dotfiles/.vim ~/.vim
cp -al $DIR/../dotfiles/.vim/ftplugin ~/.vim/ftplugin
cp -al $DIR ~/bin
