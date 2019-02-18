#!/bin/sh

# --------------
# Functions
# --------------

main() {
  echo ''
  echo 'Installing Prettier'

  case "$1" in
  "install") install ;;
  "update") update ;;
  *) echo "Unsupported" ;;
  esac
}

install() {
  rm ~/.prettierrc.yml
  ln -s ~/.dotfiles/.prettierrc.yml ~/.prettierrc.yml
}

update() {
  install
}

# --------------
# Main Script
# --------------

main "$@"
