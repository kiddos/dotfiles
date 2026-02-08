#!/usr/bin/env sh

rm -rf "$HOME/.gitconfig"
ln -s "$(pwd)/.gitconfig" "$HOME/.gitconfig"

rm -rf "$HOME/.tmux.conf"
ln -s "$(pwd)/.tmux.conf" "$HOME/.tmux.conf"

rm -rf "$HOME/.profile"
ln -s "$(pwd)/.profile" "$HOME/.profile"

# rm -rf "$HOME/.oh-my-zsh/custom/themes/kiddos.zsh-theme"
# ln -s "$(pwd)/custom/themes/kiddos.zsh-theme" "$HOME/.oh-my-zsh/custom/themes/kiddos.zsh-theme"

mkdir -p "$HOME/.config"
# kitty
rm -rf "$HOME/.config/kitty"
ln -s "$(pwd)/kitty" "$HOME/.config/kitty"

# fish
rm -rf "$HOME/.config/fish"
ln -s "$(pwd)/fish" "$HOME/.config/fish"

# mise
mkdir -p "$HOME/.config/mise"
rm -rf "$HOME/.config/mise/config.toml"
ln -s "$(pwd)/mise_config.toml" "$HOME/.config/mise/config.toml"

# navi
rm -rf "$HOME/.local/share/navi"
ln -s "$(pwd)/navi" "$HOME/.local/share/navi"

