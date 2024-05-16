#!/usr/bin/env sh

wget https://raw.githubusercontent.com/SampersS/.dotfiles/main/all.tar
tar -xf all.tar
rm all.tar
mv ./.zshrc ~/.zshrc
mv ./.vimrc ~/.vimrc
mv ./.inputrc ~/.inputrc
mkdir ~/.config 2>/dev/null
mv ./fastfetch-cnf.jsonc ~/.config/fastfetch-cnf.jsonc
rm installer.sh
