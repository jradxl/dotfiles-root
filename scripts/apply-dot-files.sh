#!/bin/bash

ROOTMOIDIR="/root/.local/share/dotfiles-root/"

echo "This script replaces .bashrc and .profile for the root user from the Git Repo"
echo "Do you wish to continue?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) exit;;
    esac
done

cp "$ROOTMOIDIR/dot-root-bashrc"  /root/.bashrc
cp "$ROOTMOIDIR/dot-root-profile" /root/.profile

echo "Done"
exit 0

