#!/bin/bash
#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR=`dirname ${BASH_SOURCE[0]}`
ln $DIR/../dotfiles/.tmux.conf ~/.tmux.conf
ln $DIR/../dotfiles/.zshrc ~/.zshrc
ln $DIR/../dotfiles/.vimrc ~/.vimrc
cp -al $DIR/../dotfiles/.vim ~/.vim
