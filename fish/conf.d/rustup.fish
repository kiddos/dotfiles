if test -d $HOME/.cargo
  source "$HOME/.cargo/env.fish"
  if command -q lsd
    alias ls=lsd
    alias sl=lsd
    alias l='lsd -l'
    alias la='lsd -a'
    alias lla='lsd -la'
    alias lt='lsd --tree'
  end
  if command -q zoxide
    zoxide init fish | source
    alias cd=z
  end
  if command -q du
    alias du=dust
  end
  if command -q navi
    navi widget fish | source
  end
end
