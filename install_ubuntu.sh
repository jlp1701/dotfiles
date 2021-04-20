#!/bin/bash

################################################################################
# Install script to bootstrap ubuntu installation
# Instructions: 
#   1. Install git
#   2. Clone the dotfiles repository to the home folder
#   3. Mark the this script executable and run it without sudo
### When installed in VBox the following steps have to be done before:
# install build-essential (apt)
# install vbox guest-additions
# reboot the machine
################################################################################

pushd ~
mkdir -p ~/repos

# install common apt packages
echo "Installing apt packages ..."
sudo apt update -y
sudo apt install curl firefox gimp git moreutils python3 python3-pip python3-setuptools stow gawk xsel rlwrap texlive-full -y
echo "done."

# install cheat.sh
curl https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh
sudo chmod +x /usr/local/bin/cht.sh

# Git summary
cd ~/repos
git clone https://github.com/MirkoLedda/git-summary.git
pushd git-summary
# sudo cp git-summary /usr/local/bin/git-summary
sudo ln -s ~/repos/git-summary/git-summary /usr/local/bin/git-summary
popd

# Install vscode and configuration

# install urxvt
sudo apt install rxvt-unicode xsel -y

# install terminal extensions
git clone https://github.com/simmel/urxvt-resize-font
mkdir -p ~/.urxvt/ext
cp ./urxvt-resize-font/resize-font ~/.urxvt/ext

# install dwm
sudo apt install dwm suckless-tools -y

# Install zsh
echo "Installing zsh ..."
sudo apt install fonts-powerline zsh -y

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# stow the config file
pushd ~/dotfiles
rm ~/.zshrc
stow zsh
stow X
popd

# switch the shell
chsh -s $(which zsh)
echo "done."

xrdb ~/.Xresources

# return to previous working dir
popd

echo "Installation complete."
