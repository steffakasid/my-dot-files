# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Aliases
alias reload-zshrc=". ~/.zshrc"

# Custom exports
export GOPATH=$HOME/Projects/go
export EDITOR="code --wait"

# Setup PATH
PATH=$HOME/.bin:$PATH
PATH=$GOPATH/bin:$GOROOT/bin:$PATH
PATH=/opt/homebrew/bin/:$PATH
export PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export HISTFILE="$HOME/.zsh_history_$(tty | awk '{print(substr($1,6))}')"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/sid/.sdkman"
[[ -s "/home/sid/.sdkman/bin/sdkman-init.sh" ]] && source "/home/sid/.sdkman/bin/sdkman-init.sh"
autoload -U compinit; compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
