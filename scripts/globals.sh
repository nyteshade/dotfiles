#!/bin/sh
#
# Globals Script
#
# shellcheck disable=SC2039

# --------------
# Globals
# --------------

readonly DOTFILES_ROOT=$(realpath "$(dirname "$(dirname "${BASH_SOURCE[0]}")")")
export DOTFILES_ROOT

readonly NPM_DEPS=(
  "@google/clasp"
  "bash-language-server"
  "eslint"
  "prettier"
)
export NPM_DEPS
