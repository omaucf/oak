#!/bin/bash

GIT_NAME=""
GIT_EMAIL=""
GIT_DEFAULT_BRANCH="main"

GO_VERSION="1.23.2"

set -e

# Setting Github
git config --global user.name $GIT_NAME
git config --global user.email $GIT_EMAIL
git config --global init.defaultBranch $GIT_DEFAULT_BRANCH

# Update packages
echo "Updating..."
sudo apt update

# Install packages
# echo "Installing..."
# sudo apt install git curl make unzip wget zsh

# Install Oh My Zsh
# echo "Installing Zsh..."
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# Install Bun
# echo "Installing Bun..."
# curl -fsSL https://bun.sh/install | bash
# exec /usr/bin/zsh

# Verify Bun installation
# echo "Verifying Bun installation..."
# bun -v

# Install Go
# echo "Installing Go..."
# wget https://golang.org/dl/go$GO_VERSION.linux-amd64.tar.gz
# sudo tar -C /usr/local -xzf go$GO_VERSION.linux-amd64.tar.gz
# rm go$GO_VERSION.linux-amd64.tar.gz
# echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.zshrc
# source ~/.zshrc

# # Verify Go installation
# echo "Verifying Go installation..."
# go version
