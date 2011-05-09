export ZSH=$HOME/.oh-my-zsh
plugins=(git osx ruby bundler brew cap gem github rails3)
source $ZSH/oh-my-zsh.sh

if [ -f ~/.projectrc ]
then
  . ~/.projectrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc
