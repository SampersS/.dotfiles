#!/usr/bin/env sh

wget https://raw.githubusercontent.com/SampersS/.dotfiles/main/all.tar
tar -xf all.tar
rm all.tar
mv ./all/.zshrc ~/.zshrc
mv ./all/.vimrc ~/.vimrc
mv ./all/.inputrc ~/.inputrc
mkdir ~/.config 2>/dev/null
mv ./all/fastfetch-cnf.jsonc ~/.config/fastfetch-cnf.jsonc
rm -rf ./all
rm installer.sh
