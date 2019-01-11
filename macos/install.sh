echo 'Setting up macOS'

# Screenshots

SCREENSHOTDIR="${HOME}/Pictures/Screenshots"

test -d "${SCREENSHOTDIR}" || mkdir "${SCREENSHOTDIR}"

defaults write com.apple.screencapture location $SCREENSHOTDIR

# Dock Prefs

defaults write com.apple.dock autohide -bool yes;
defaults write com.apple.dock autohide-delay -float 0;
defaults write com.apple.dock autohide-time-modifier -float 0.14999999999999999;

killall Dock
