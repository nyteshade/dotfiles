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
  GOPATH="${HOME}/.go"
  test -d "${GOPATH}" || mkdir "${GOPATH}"
  test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

  rm ~/.bashrc
  ln -s ~/.dotfiles/bash/symlink.bashrc ~/.bashrc

  rm ~/.bash_profile

  if [ -f ~/.dotfiles/private/.bash_profile ]; then
    ln -s ~/.dotfiles/private/.bash_profile ~/.bash_profile
  else
    ln -s ~/.dotfiles/bash/symlink.bash_profile ~/.bash_profile
  fi
}

update() {
  install
}

# --------------
# Main Script
# --------------

main "$@"
