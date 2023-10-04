#!/bin/zsh

rm -rf $HOME/.oh-my-zsh

zsh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

rootdir=$(git rev-parse --show-toplevel)

cp $rootdir/dotfiles/.zshrc ~/.zshrc

exec /bin/zsh