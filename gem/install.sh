#!/bin/sh

# --------------
# Functions
# --------------

main() {
  echo ''
  echo 'Setting up Bundler'

  if $(gem list bundler -i); then 
    echo "Bundler gem is installed!";
  else
    gem install bundler
  fi

  case "$1" in
  "install") install ;;
  "update") update ;;
  *) echo "Unsupported" ;;
  esac
}

install() {
  bundle install --system
}

update() {
  gem install bundler
  bundle update
  install
}

# --------------
# Main Script
# --------------

main "$@"
