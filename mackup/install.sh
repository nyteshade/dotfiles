#!/bin/sh

# shellcheck disable=SC2039

# --------------
# Functions
# --------------

# Main
main() {
  echo ''
  echo 'Setting up Mackup'

  case "$1" in
  "install") install ;;
  "update") update ;;
  *) echo "Unsupported" ;;
  esac
}

# Install
install() {
  rm ~/.mackup.cfg
  ln -s ~/.dotfiles/private/mackup/.mackup.cfg ~/.mackup.cfg
}

# Update
update() {
  install
}

# --------------
# Main Script
# --------------

main "$@"
