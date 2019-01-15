if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f ~/.dotfiles/dotfiles_private/.bash_profile ]; then
  source ~/.dotfiles/dotfiles_private/.bash_profile
fi

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
