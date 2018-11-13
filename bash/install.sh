#!/bin/sh

echo ''
echo 'Installing Bash'

rm ~/.bashrc
ln -s ~/.dotfiles/bash/symlink.bashrc ~/.bashrc
