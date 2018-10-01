#!/bin/sh

echo ''
echo 'Installing Vim'

rm ~/.vimrc
ln -s ~/.dotfiles/vim/vimrc.symlink ~/.vimrc
