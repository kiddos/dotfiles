# oh my zsh settings {
export ZSH=/home/joseph/.oh-my-zsh

# Path to your oh-my-zsh installation
ZSH_THEME="gianu"

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
plugins=(git git-extras gitfast docker node go adb heroku virtualenv postgres npm pip tmux rvm ubuntu django)
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
# CUDA
export CUDA_HOME=/usr/local/cuda-8.0
export PATH="$PATH:$CUDA_HOME/bin"
export PATH="$PATH:/usr/lib/nvidia-375/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$CUDA_HOME/lib64:$CUDA_HOME/extras/CUPTI/lib64"
# ruby
export PATH="$PATH:$HOME/.rvm/bin:$HOME/.rvm/scripts"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# lldb path
export PYTHONPATH="$PYTHONPATH:/usr/lib/python2.7/dist-packages/lldb-3.8"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"
# }
# ROS settings {
function ros_reset {
  export ROS_DISTRO=""
  export ROS_ETC_DIR=""
  export ROS_MASTER_URI=""
  export ROSLISP_PACKAGE_DIRECTORIES=""
  export ROS_PACKAGE_PATH=""
  export ROS_ROOT=""
}

# setup catkin workspace
function catkin_setup {
  source ~/catkin_$ROS_DISTRO/devel/setup.zsh
}

ros_reset
# default to indigo
if [ ! $ROS_DISTRO ]; then
  source /opt/ros/indigo/setup.zsh
  catkin_setup
fi

function ros_swap {
  if [ $ROS_DISTRO = "indigo" ]; then
    ros_reset
    source /opt/ros/kinetic/setup.zsh
  elif [ $ROS_DISTRO = "kinetic" ]; then
    ros_reset
    source /opt/ros/indigo/setup.zsh
  fi
}
# }
# macro {
alias :q=exit
alias :Q=exit
# }
# emsdk {
function emsdk_init {
  source $HOME/tools/emsdk/emsdk_env.sh
}
# }
# bazel {
fpath[1,0]=~/.zsh/completion/
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
# }
# fun {
alias sl="ls"
alias train="/usr/games/sl"
alias luck="/usr/games/fortune | /usr/games/cowsay"
# }

. /home/joseph/tools/torch/install/bin/torch-activate
