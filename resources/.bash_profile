# shellcheck disable=SC2148

# Ruby Env
if command -v rbenv >/dev/null; then
  eval "$(rbenv init -)"
fi

# Bash RC
if [ -f ~/.bashrc ]; then
  # shellcheck source=.bashrc
  source ~/.bashrc
fi
