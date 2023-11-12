#!/usr/bin/env zsh

rm -rf $HOME/.gitconfig
ln -s `pwd`/.gitconfig $HOME/.gitconfig 

rm -rf $HOME/.zshrc
ln -s `pwd`/.zshrc $HOME/.zshrc

rm -rf $HOME/.tmux.conf
ln -s `pwd`/.tmux.conf $HOME/.tmux.conf

rm -rf $HOME/.alacritty.yml
ln -s `pwd`/.alacritty.yml $HOME/.alacritty.yml
