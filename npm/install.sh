#!/bin/sh

# shellcheck disable=SC2039

# --------------
# Functions
# --------------

# Main
main() {
  echo ''
  echo 'Setting up NPM'

  case "$1" in
  "install") install ;;
  "update") update ;;
  *) echo "Unsupported" ;;
  esac
}

# Install
install() {
  local global_deps=(
    "@google/clasp"
    "bash-language-server"
    "prettier"
  )

  for dep in "${global_deps[@]}"; do
    npm install "$dep" -g
  done
}

# Update
update() {
  npm install -g npm
  install
}

# --------------
# Main Script
# --------------

main "$@"
