#!/bin/bash

if [ -z $(which brew) ]
then
    echo -e "> Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo -e "> Updating Homebrew..."
    brew update
fi