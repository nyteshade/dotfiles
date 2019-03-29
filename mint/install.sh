#!/bin/sh

# --------------
# Functions
# --------------

main() {
  echo ''
  echo 'Setting up Mint'

  case "$1" in
  "install") install ;;
  "update") update ;;
  *) echo "Unsupported" ;;
  esac
}

install() {
  mint bootstrap

  while read -r mint_dep; do
    mint install "$mint_dep"
  done <Mintfile
}

update() {
  install

  cd sourcekit-lsp/ || exit
  swift build
  mv .build/debug/sourcekit-lsp /usr/local/bin

  cd ../ || exit
}

# --------------
# Main Script
# --------------

main "$@"
