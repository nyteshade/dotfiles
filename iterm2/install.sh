#!/bin/sh

# --------------
# Functions
# --------------

main() {
  echo ''
  echo 'Setting up iTerm2'

  case "$1" in
  "install") install ;;
  "update") update ;;
  *) echo "Unsupported" ;;
  esac
}

install() {
  echo 'iTerm2 Install Not Setup'
}

update() {
  install
}

# --------------
# Main Script
# --------------

main "$@"
