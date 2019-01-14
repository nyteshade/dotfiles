#!/bin/sh

# --------------
# Functions
# --------------

main() {
  echo ''
  echo 'Installing Vim'

  case "$1" in
  "install") install ;;
  "update") update ;;
  *) echo "Unsupported" ;;
  esac
}

install() {
  rm ~/.vimrc
  ln -s ~/.dotfiles/vim/symlink.vimrc ~/.vimrc
}

update() {
  install
}

# --------------
# Main Script
# --------------

main "$@"
