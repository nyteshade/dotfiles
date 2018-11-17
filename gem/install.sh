#!/bin/sh

echo ''
echo 'Setting up Bundler'

if `gem list bundler -i`; then 
  echo "Bundler gem is installed!";
else
  gem install bundler
fi

bundle install --system
