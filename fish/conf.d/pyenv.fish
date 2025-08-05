if test -d $HOME/.pyenv
  set -Ux PYENV_ROOT $HOME/.pyenv
  fish_add_path -P $PYENV_ROOT/bin
  pyenv init - fish | source
end
