#!/bin/bash

GIT_DEFAULT_BRANCH="main"
GIT_NAME=""
GIT_EMAIL=""

# NODE_VERSION="22.11.0"
# PNPM_VERSION="9.14.2"
# GO_VERSION="1.23.2"

set -e

# # Setting Github
git config --global init.defaultBranch $GIT_DEFAULT_BRANCH
git config --global user.name $GIT_NAME
git config --global user.email $GIT_EMAIL

# Update packages
echo "Updating..."
sudo apt update -y

# Install packages
echo "Installing..."
sudo apt install -y curl wget make zsh

# Install Oh My Zsh
# echo "Installing Oh My Zsh..."
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# Install Volta
# echo "Installing Volta..."
# curl https://get.volta.sh | bash
# source ~/.zshrc
# echo "Installing Node..."
# volta install node@$NODE_VERSION
# echo "Installing Pnpm..."
# volta install pnpm@$PNPM_VERSION

# Install Docker
echo "Installing Docker..."
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update -y
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Install Go
# echo "Installing Go..."
# sudo apt install -y golang-go snapd

echo "Installation completed successfully!"
