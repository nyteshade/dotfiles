#!/bin/sh

# --------------
# Functions
# --------------

main() {
  echo ''
  echo 'Setting up NPM'

  case "$1" in
  "install") install ;;
  "update") update ;;
  *) echo "Unsupported" ;;
  esac
}

install() {
  npm install -g prettier
}

update() {
  npm install -g npm
  install
}

# --------------
# Main Script
# --------------

main "$@"
