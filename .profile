#!/bin/zsh

export PATH=$PATH:~/.local/bin
export LD_LIBRARY_PATH=/usr/lib/

export DENO_DIR="$HOME/.deno"
export PATH="$DENO_DIR/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export GOPATH="$HOME/go"
#export PATH=~/SSD/fuchsia/.jiri_root/bin:$PATH
#source ~/SSD/fuchsia/scripts/fx-env.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

