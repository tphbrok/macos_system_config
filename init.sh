#!/bin/bash

BLUE='\033[1;34m'
GREEN='\033[1;32m'

echo -e "${BLUE}Homebrew"
if [ -z $(which brew) ]
then
    echo -e "  Installing...\n"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "\n  Successfully installed Homebrew\n"
else
    echo "  Already installed"
fi

echo "Ansible"
if [ -z $(which ansible-playbook) ]
then
    echo -e "  Installing...\n"
    brew install ansible
    echo -e "\n  Successfully installed Ansible\n"
else
    echo -e "  Already installed"
fi

echo -e "\n${GREEN}Initialization succesfully completed"