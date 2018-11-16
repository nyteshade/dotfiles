#!/bin/sh

echo ''
echo 'Installing Bash'

test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

rm ~/.bashrc
ln -s ~/.dotfiles/bash/symlink.bashrc ~/.bashrc
