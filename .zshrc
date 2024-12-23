# oh my zsh settings {
export ZSH=/home/$USER/.oh-my-zsh
# Path to your oh-my-zsh installation
# ZSH_THEME="philips"
ZSH_THEME="kiddos"
# ZSH_THEME="risto"
# ZSH_THEME="crunch"
# ZSH_THEME="gentoo"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=14

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
zstyle ':omz:plugins:nvm' lazy yes
plugins=(
  git git-lfs git-flow git-extras
  rsync
  fzf
  docker docker-compose
  nvm
  npm yarn
  pyenv
  pip
  bazel buf
  tmux screen man
  flutter
  rust
  sdk ant gradle mvn
  zoxide
)
# }
source $ZSH/oh-my-zsh.sh
zmodload zsh/zprof

# custom path settings {
# local path
export PATH=$HOME/.local/bin:$PATH
export PATH=/usr/local/bin:$PATH
# manual path
export MANPATH="/usr/local/man:$MANPATH"
# language
export LANG=en_US.UTF-8

# editor
export EDITOR='nvim'
function cow() {
  fortune | cowsay -f $(ls /usr/share/cowsay/cows | shuf -n 1 | cut -d. -f1)
}
# }
# CUDA {
export CUDA_HOME=/usr/local/cuda-12.1
export CUDNN_HOME=/usr/local/cuda-12.1
export PATH="$PATH:$CUDA_HOME/bin"
# export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$CUDA_HOME/lib64:$CUDA_HOME/extras/CUPTI/lib64"
export TF_FORCE_GPU_ALLOW_GROWTH=true
export XLA_PYTHON_CLIENT_PREALLOCATE=false
export XLA_FLAGS=--xla_gpu_cuda_data_dir=$CUDA_HOME
# }
# npm {
# export NPM_PACAKGES="$HOME/.local/lib/node_modules"
# export PATH=$PATH:$NPM_PACAKGES/bin
# export MANPATH=":$NPM_PACKAGES/share/man"
# }
# ssh {
export SSH_KEY_PATH="~/.ssh/rsa_id"
alias ssh="TERM=xterm-256color ssh"
# }
# tmux {
# alias tmux="TERM=tmux-256color tmux -2"
# alias tmux="tmux -2"
# }
# kitty {
export PATH=$PATH:$HOME/.local/kitty.app/bin
# }
# macro {
alias :q=exit
alias :Q=exit
# }
# fun {
alias sl="ls"
alias train="/usr/games/sl"
alias luck="/usr/games/fortune | /usr/games/cowsay"
# }
# sdkman {
# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "/$HOME/.sdkman/bin/sdkman-init.sh"
# }
# android {
export ANDROID_HOME=$HOME/Android/Sdk
if [[ -d $ANDROID_HOME ]]; then
  export PATH=$PATH:$ANDROID_HOME/emulator
  export PATH=$PATH:$ANDROID_HOME/platform-tools
  export PATH=$PATH:$ANDROID_HOME/tools/bin
  export ANDROID_SDK_ROOT=$ANDROID_HOME
fi
# }
# ruby {
export PATH="$PATH:$HOME/.rvm/bin:$HOME/.rvm/scripts"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
# }
# go {
export PATH=$PATH:$HOME/go/bin
# }
# flutter {
export PATH=$PATH:$HOME/flutter/bin
export PATH=$PATH:$HOME/.pub-cache/bin
# }
# rust {
if [[ -d $HOME/.cargo ]]; then
  source "$HOME/.cargo/env"
  alias ls=lsd
fi
# }
# keras {
export KERAS_HOME=$HOME/keras
# }
# pytorch {
export PYTORCH_HUB=$HOME/pytorch
export PYTORCH_HOME=$HOME/pytorch
export TORCH_HOME=$HOME/pytorch
# }
# huggingface {
export HF_HOME=$HOME/huggingface
# }
# onnx {
export ONNX_HOME=$HOME/onnx
# }
# platformio {
function platformio {
  source $HOME/.platformio/penv/bin/activate
  export IDF_PATH=$HOME/projects/embedded/ESP8266_RTOS_SDK
  export PATH=$PATH:$HOME/projects/embedded/xtensa-lx106-elf/bin
}
# }
# tensorflow {
# 0 = all messages are logged (default behavior)
# 1 = INFO messages are not printed
# 2 = INFO and WARNING messages are not printed
# 3 = INFO, WARNING, and ERROR messages are not printed
export TF_CPP_MIN_LOG_LEVEL=1
# }
# pyenv {
# export PYENV_ROOT="$HOME/.pyenv"
if [[ -d $PYENV_ROOT ]]; then
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
# }
# nvm {
# export NVM_DIR="$HOME/.nvm"
# if [[ -d $NVM_DIR ]]; then
#   [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#   [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# fi
# }
# neovim {
export NVIM_PYTHON_LOG_FILE=$HOME/.local/nvim.log
# }
# extra setting {
if [[ -f $HOME/.api-keys.zsh ]]; then
  source $HOME/.api-keys.zsh
fi

if [[ -f $HOME/.env.zsh ]]; then
  source $HOME/.env.zsh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# }
# aider {
alias ai="pyenv activate aider; OLLAMA_API_BASE=http://127.0.0.1:11434 aider --model ollama_chat/llama3.2"
# }
