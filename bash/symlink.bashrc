# Go development

export EDITOR=vim

# Go Paths
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"

# Path Exports
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# added by travis gem
[ -f /Users/codytwinton/.travis/travis.sh ] && source /Users/codytwinton/.travis/travis.sh
