#!/bin/sh

# --------------
# Functions
# --------------

main() {
  echo ''
  echo 'Setting up Git'

  case "$1" in
  "install") install ;;
  "update") update ;;
  *) echo "Unsupported" ;;
  esac
}

install() {
  git config --global color.ui true
}

update() {
  install
}

# --------------
# Main Script
# --------------

main "$@"
