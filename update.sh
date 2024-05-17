#!/usr/bin/env sh

cp ~/.zshrc ./.zshrc
cp ~/.vimrc ./.vimrc
cp ~/.inputrc ./.inputrc 
cp ~/.config/fastfetch-cnf.jsonc ./fastfetch-cnf.jsonc

tar -cf all.tar .inputrc .zshrc .inputrc fastfetch-cnf.jsonc

git status