#!/bin/bash

pushd ~

# install build-essential (apt)
# install vbox guest-additions
# reboot the machine

mkdir ~/repos

# install common apt packages
echo "Installing apt packages ..."
sudo apt update
sudo apt install curl firefox gimp git moreutils python3 python3-pip python3-setuptools stow texlive-full gawk
echo "done."

# install cheat.sh
curl https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh
sudo chmod +x /usr/local/bin/cht.sh

# Git summary
cd ~/repos
git clone https://github.com/MirkoLedda/git-summary.git
cd git-summary
# sudo cp git-summary /usr/local/bin/git-summary
sudo ln -s ~/repos/git-summary/git-summary /usr/local/bin/git-summary

# Install vscode and configuration

# Install zsh

# return to previous working dir
popd