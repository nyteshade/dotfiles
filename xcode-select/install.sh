echo 'Installing Xcode'

if [[ "$(xcode-select -p)" == "" ]]; then
  xcode-select --install
fi
