#!/bin/sh

# --------------
# Functions
# --------------

main() {
  echo ''
  echo 'Setting up Homebrew'

  sudo chown -R "$(whoami)" /usr/local/lib /usr/local/sbin

  if ! [ -x "$(command -v brew)" ]; then
    echo ''
    echo 'Installing Homebrew'
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  else
    brew upgrade
  fi

  case "$1" in
  "install") install ;;
  "update") update ;;
  *) echo "Unsupported" ;;
  esac
}

install() {
  brew bundle check || brew bundle
}

update() {
  brew bundle
}

# --------------
# Main Script
# --------------

main "$@"
