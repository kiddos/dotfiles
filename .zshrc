# oh my zsh settings {
export ZSH=/home/$USER/.oh-my-zsh
# Path to your oh-my-zsh installation
ZSH_THEME="gianu"
# ZSH_THEME="risto"

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
plugins=(git docker npm yarn pip tmux screen flutter rust adb ripgrep)
# }
source $ZSH/oh-my-zsh.sh
# custom path settings {
# local path
export PATH=$HOME/bin:/usr/local/bin:$PATH
# manual path
export MANPATH="/usr/local/man:$MANPATH"
# language
export LANG=en_US.UTF-8

# editor
export EDITOR='nvim'
export PATH="$PATH:$HOME/.local/bin"
# }

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# CUDA {
export CUDA_HOME=/usr/local/cuda
export PATH="$PATH:$CUDA_HOME/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$CUDA_HOME/lib64:$CUDA_HOME/extras/CUPTI/lib64"
export TENSORRT="TensorRT-8.5.2.2"
export LD_LIBRARY_PATH="/usr/local/$TENSORRT/lib"
export TF_FORCE_GPU_ALLOW_GROWTH=true
export XLA_PYTHON_CLIENT_PREALLOCATE=false
# }
# npm {
export NPM_PACAKGES="$HOME/.local/lib/node_modules"
export PATH=$PATH:$NPM_PACAKGES/bin
export MANPATH=":$NPM_PACKAGES/share/man"
# }
# ssh {
export SSH_KEY_PATH="~/.ssh/rsa_id"
# }
# macro {
alias :q=exit
alias :Q=exit
alias wifi_list="nmcli c"
alias tmux=tmux -2
# }
# bazel {
if [[ -f "$HOME/.zsh/completion" ]]; then
  fpath[1,0]=~/.zsh/completion/
  zstyle ":completion:*" use-cache on
  zstyle ":completion:*" cache-path ~/.zsh/cache
fi
# }
# fun {
alias sl="ls"
alias train="/usr/games/sl"
alias luck="/usr/games/fortune | /usr/games/cowsay"
# }
# sdkman {
# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
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
# java {
export JAVA_HOME=$HOME/.local/jdk-11.0.2
export PATH=$PATH:$HOME/.local/apache-ant-1.10.10/bin
export PATH=$PATH:$HOME/.local/apache-maven-3.8.6/bin
# }
# go {
export PATH=$PATH:$HOME/.local/go/bin
# }
# flutter {
export PATH=$PATH:$HOME/flutter/bin
# }
# rust {
source "$HOME/.cargo/env"
# }
# depot_tools {
export PATH=$PATH:$HOME/.local/depot_tools
# }
# exercism {
export PATH=$PATH:$HOME/.local/exercism/
export PATH=$PATH:$HOME/.local/exercism/shell
# }
# dasm {
export PATH=$PATH:$HOME/.local/dasm
# }

alias luamake=/home/kiddos/.local/lsp/lua-language-server/3rd/luamake/luamake

export GOOGLE_APPLICATION_CREDENTIALS="$HOME/.local/translate-nvim-26a86d528a71.json"
