export ZSH=$HOME/.oh-my-zsh
plugins=(git osx ruby bundler brew cap gem github rails3 pow)
source $ZSH/oh-my-zsh.sh

[[ -s "$HOME/.projectrc" ]] && source "$HOME/.projectrc"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

source ~/.zsh/config
source ~/.zsh/aliases
source ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -s "$HOME/.localrc" ]] && source "$HOME/.localrc"
