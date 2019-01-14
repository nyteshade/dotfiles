#!/bin/sh

# --------------
# Functions
# --------------

main() {
  echo ''
  echo 'Setting up VSCode'

  case "$1" in
  "install") install ;;
  "update") update ;;
  *) echo "Unsupported" ;;
  esac
}

install() {
  echo 'Install VSCode Not Setup'
}

update() {
  install
}

# --------------
# Main Script
# --------------

main "$@"
