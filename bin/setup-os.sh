#!/bin/bash
DIR="/home/micah/os-config"
echo 'Using' $DIR

ln $DIR/dotfiles/.tmux.conf ~/.tmux.conf
ln $DIR/dotfiles/.zshrc ~/.zshrc
ln $DIR/dotfiles/.vimrc ~/.vimrc
sudo ln $DIR/bin/startsyncthing.sh /etc/init.d/startsyncthing.sh

cp -al $DIR/dotfiles/.vim ~/.vim
cp -al $DIR/bin ~/bin

chsh -s $(which zsh)
