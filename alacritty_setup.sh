#!/usr/bin/env zsh

wget https://github.com/alacritty/alacritty/raw/master/extra/linux/Alacritty.desktop
wget https://github.com/alacritty/alacritty/raw/master/extra/logo/alacritty-term.svg
wget https://github.com/alacritty/alacritty/raw/master/extra/completions/_alacritty

sudo cp alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install Alacritty.desktop
sudo update-desktop-database

mkdir -p $HOME/.zsh_functions
cp _alacritty $HOME/.zsh_functions/_alacritty

rm -rf Alacritty.desktop
rm -rf alacritty-term.svg
rm -rf _alacritty
