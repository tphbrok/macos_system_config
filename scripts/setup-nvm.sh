#!/bin/zsh

export NVM_DIR=$HOME/.nvm;
source $NVM_DIR/nvm.sh;

nvm install --lts
nvm use --lts

omz reload