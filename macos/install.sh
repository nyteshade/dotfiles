#!/bin/sh

# --------------
# Functions
# --------------

main() {
  echo ''
  echo 'Setting up macOS'

  case "$1" in
  "install") install ;;
  "update") update ;;
  *) echo "Unsupported" ;;
  esac
}

install() {
  # Screenshots

  SCREENSHOTDIR="${HOME}/Pictures/Screenshots"

  test -d "${SCREENSHOTDIR}" || mkdir "${SCREENSHOTDIR}"

  defaults write com.apple.screencapture location "$SCREENSHOTDIR"

  # Dock Prefs

  defaults write com.apple.dock autohide -bool yes;
  defaults write com.apple.dock autohide-delay -float 0;
  defaults write com.apple.dock autohide-time-modifier -float 0.14999999999999999;

  killall Dock

  # Xcode

  if [[ "$(xcode-select -p)" == "" ]]; then
    xcode-select --install
  fi
}

update() {
  install
}

# --------------
# Main Script
# --------------

main "$@"
