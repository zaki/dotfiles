if [ -f ~/.projectrc ]
then
  . ~/.projectrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/config

if [ -f ~/.localrc ]; then
  . ~/.localrc
fi
