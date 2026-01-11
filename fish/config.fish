if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

# environment variable {
# local path
set -gx PATH $PATH $HOME/.local/bin
# editor
set -x EDITOR nvim
# }
# ssh {
set -x SSH_KEY_PATH "~/.ssh/rsa_id"
alias ssh="TERM=xterm-256color /usr/bin/ssh"
# }
# macro {
alias :q=exit
alias :Q=exit
alias kubectl="minikube kubectl --"
alias bcmake="cmake -B build .; make -C build -j8"
# }
# typo {
alias sl="ls"
# }
# cpp-compiler {
set -x CXX clang++
set -x CC clang
# }
if test -e $HOME/.env
  source $HOME/.env
end
