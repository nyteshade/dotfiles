# Go development

export EDITOR=vim

# Go Paths
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"

# Path Exports
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Profile Values
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
