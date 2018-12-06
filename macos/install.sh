echo 'Setting up macOS'

# Screenshots

SCREENSHOTDIR="${HOME}/Pictures/Screenshots"

test -d "${SCREENSHOTDIR}" || mkdir "${SCREENSHOTDIR}"

defaults write com.apple.screencapture location $SCREENSHOTDIR
