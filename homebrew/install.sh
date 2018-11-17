#!/bin/sh

echo ''
echo 'Setting up Homebrew'

if ! [ -x "$(command -v brew)" ]; then
  echo ''
  echo 'Installing Homebrew'
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  brew upgrade
fi

brew bundle
