if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/config

if [ -f ~/.localrc ]; then
  . ~/.localrc
fi
