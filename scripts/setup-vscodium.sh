#!/bin/bash

extensions=(
    "bradlc.vscode-tailwindcss"
    "dbaeumer.vscode-eslint"
    "eamodio.gitlens"
    "esbenp.prettier-vscode"
    "formulahendry.auto-rename-tag"
    "ritwickdey.liveserver"
    "teabyii.ayu"
)

for extension in ${extensions[*]}; do
    codium --install-extension $extension --force
done

echo -e "${BLUE}> Copying VSCodium settings..."
cp ./config/vscodium/settings.json \
    $HOME/Library/Application\ Support/VSCodium/User/settings.json