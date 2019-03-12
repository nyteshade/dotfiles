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
  ln -s ~/.dotfiles/mackup/backup/.mackup.cfg ~/.mackup.cfg

  mackup restore
}

# Update
update() {
  install
}

# --------------
# Main Script
# --------------

main "$@"
