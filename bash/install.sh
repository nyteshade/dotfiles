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

  rm ~/.bash_profile
  ln -s ~/.dotfiles/bash/symlink.bash_profile ~/.bash_profile
}

update() {
  install
}

# --------------
# Main Script
# --------------

main "$@"
