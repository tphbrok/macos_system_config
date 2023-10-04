#!/bin/bash

echo -e "${BLUE}> Installing Homebrew packages..."
brew bundle

echo -e "${BLUE}> Removing unlisted Homebrew packages..."
brew bundle cleanup --force

chsh -s /usr/local/bin/zsh