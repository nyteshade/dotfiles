#!/bin/sh

echo ''
echo 'Setting up Mint'

mint bootstrap

while read mint_dep; do
  mint install "$mint_dep"
done <Mintfile
