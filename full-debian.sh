#!/usr/bin/env sh

USER=$(whoami)
echo "installeren voor gebruiker: $USER"
echo "gelieve sudo rechten te verlenen..."
sudo echo "dankuwel"

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

echo "installatie terminal toepassingen..."
sudo apt update
wget https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-linux-amd64.deb
sudo apt install ./fastfetch-linux-amd64.deb
rm ./fastfetch-linux-amd64.deb
sudo apt install zsh vim

echo "sh veranderen..."
sudo chsh $USER --shell /bin/zsh

rm full-debian.sh
