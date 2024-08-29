#!/bin/bash

CURRENTDIR=$(pwd)
ROOTMOIDIR="/root/.local/share/dotfiles-root/"

echo "This script replaces .bashrc and .profile FROM the root user into the Git Repo, and commits the changes."
echo "Do you wish to continue?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) exit;;
    esac
done

cp /root/.bashrc  "$ROOTMOIDIR/dot-root-bashrc"  
cp /root/.profile "$ROOTMOIDIR/dot-root-profile"

cd "$ROOTMOIDIR"
git status
git add .
git commit -m "Updating dotfiles"
git push

cd "$CURRENTDIR"
echo "Done"
exit 0

