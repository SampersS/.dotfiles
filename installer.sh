#!/usr/bin/env sh

echo "copying dotfiles..."
wget https://raw.githubusercontent.com/SampersS/.dotfiles/main/all.tar
tar -xf all.tar
rm all.tar
mv ./.zshrc ~/.zshrc
mv ./.vimrc ~/.vimrc
mv ./.inputrc ~/.inputrc
mkdir ~/.config
mv ./fastfetch-cnf.jsonc ~/.config/fastfetch-cnf.jsonc
touch ~/.pcrc
rm installer.sh
