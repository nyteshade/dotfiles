#!/bin/sh

# --------------
# Functions
# --------------

main() {
  echo ''
  echo 'Installing Bash'

  case "$1" in
  "install") install ;;
  "update") update ;;
  *) echo "Unsupported" ;;
  esac
}

install() {
  test -d "${GOPATH}" || mkdir "${GOPATH}"
  test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

  rm ~/.bashrc
  ln -s ~/.dotfiles/bash/symlink.bashrc ~/.bashrc
}

update() {
  install
}

# --------------
# Main Script
# --------------

main "$@"
