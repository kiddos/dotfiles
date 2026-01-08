#!/usr/bin/env zsh

rm -rf $HOME/.gitconfig
ln -s `pwd`/.gitconfig $HOME/.gitconfig 

rm -rf $HOME/.zshrc
ln -s `pwd`/.zshrc $HOME/.zshrc

rm -rf $HOME/.tmux.conf
ln -s `pwd`/.tmux.conf $HOME/.tmux.conf

rm -rf $HOME/.alacritty.toml
ln -s `pwd`/.alacritty.toml $HOME/.alacritty.toml

rm -rf $HOME/.profile
ln -s `pwd`/.profile $HOME/.profile

rm -rf $HOME/.local/bin/java_check.sh
ln -s `pwd`/java_check.sh $HOME/.local/bin/java_check.sh

rm -rf $HOME/.oh-my-zsh/custom/themes/kiddos.zsh-theme
ln -s `pwd`/custom/themes/kiddos.zsh-theme $HOME/.oh-my-zsh/custom/themes/kiddos.zsh-theme

# kitty
rm -rf $HOME/.config/kitty
ln -s `pwd`/kitty $HOME/.config/kitty

# fish
rm -rf $HOME/.config/fish
ln -s `pwd`/fish $HOME/.config/fish

# mise
rm -rf $HOME/.config/mise/config.toml
ln -s `pwd`/mise_config.toml $HOME/.config/mise/config.toml
