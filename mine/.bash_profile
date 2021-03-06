
# [[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm" # Load RVM into a shell session *as a function*


if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export MC_SKIN=$HOME/.config/mc/solarized.ini
export EDITOR=/usr/local/bin/vim
export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

source ~/.homebrew-token

source ~/.profile

source ~/.bash_prompt

source ~/.bash_aliases
source ~/.aliases
source ~/.functions
source ~/.inputrc

