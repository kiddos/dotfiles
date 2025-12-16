if test -d $HOME/.cargo
  source "$HOME/.cargo/env.fish"
  if command -q lsd
    alias ls=lsd
    alias l=lsd
    alias sl=lsd
  end
  # if command -q starship
  #   starship init fish | source
  # end
end
