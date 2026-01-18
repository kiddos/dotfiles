if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

# environment variable {
# local path
set -gx PATH $PATH $HOME/.local/bin
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
