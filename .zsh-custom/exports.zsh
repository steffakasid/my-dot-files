echo "exports.zsh"


export HISTFILE="$HOME/.zsh_history/$(tty | awk '{print(substr($1,6))}')"

GPG_TTY=$(tty)
export GPG_TTY

# Custom exports
export GOPATH=$HOME/Projects/go
export EDITOR="code --wait -r"

# Setup PATH
PATH=$HOME/.bin:$PATH
PATH=$GOPATH/bin:$GOROOT/bin:$PATH
PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
PATH=/opt/homebrew/bin:$PATH
PATH=/opt/homebrew/sbin:$PATH
export PATH
