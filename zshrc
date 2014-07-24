export ZSH=$HOME/.oh-my-zsh
plugins=(git osx ruby rvm rbenv bundler brew brew-cask cap gem github rails vagrant knife docker golang)
source $ZSH/oh-my-zsh.sh

[[ -s "$HOME/.projectrc" ]] && source "$HOME/.projectrc"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

source ~/.zsh/config
source ~/.zsh/aliases
source ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -s "$HOME/.localrc" ]] && source "$HOME/.localrc"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
