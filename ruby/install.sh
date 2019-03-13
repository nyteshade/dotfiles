#!/bin/sh
#
# Main Script
#
# shellcheck disable=SC2039

# --------------
# Functions
# --------------

main() {
  echo ''
  echo 'Setting up Bundler'

  case "$1" in
  "install") install ;;
  "update") update ;;
  *) echo "Unsupported" ;;
  esac
}

install() {
  local ruby_version
  ruby_version=$(cat ".ruby-version")

  rbenv install --skip-existing "$ruby_version"
  rbenv global "$ruby_version"

  if [ ! "$(gem list bundler -i)" ]; then
    echo "Bundler gem not installed"
    gem install bundler
  fi

  bundle install --system
}

update() {
  install
  gem install bundler
  bundle update
  bundle install --system
}

# --------------
# Main Script
# --------------

main "$@"
