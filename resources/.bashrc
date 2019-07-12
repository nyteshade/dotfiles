# shellcheck disable=SC2148

# Editor
export EDITOR=vim

# Go Root
# GOROOT="$(brew --prefix golang)/libexec"
export GOROOT="/usr/local/opt/go/libexec"

# Go Path
export GOPATH="${HOME}/.go"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

# Path Exports
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH="$PATH:/usr/local/opt/openssl/bin"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:/usr/local/opt/node@10/bin"
