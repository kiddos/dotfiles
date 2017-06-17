#!/usr/bin/env zsh

set -A files ".bashrc" ".gitconfig" ".mkshrc" ".pam_environment" ".profile" \
  ".ros.zsh" ".tern-project" ".tmux.conf" ".zlogin" ".zprofile" ".zshrc"

for (( i = 1; i <= ${#files[@]}; i++ )); do
  wget "https://raw.githubusercontent.com/kiddos/dotfiles/master/$files[$i]" \
    -O $files[$i]
done
