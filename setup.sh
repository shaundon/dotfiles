#!/bin/bash

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Finish homebrew installation
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

### Install dev stuff

# oh my zsh, and plugins
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install zsh-syntax-highlighting

# git
brew install git

# GitHub, plus login
brew install gh
gh auth login

### Apps
brew install --cask iterm2
brew install --cask visual-studio-code

### Other stuff

# Make the projects directory
mkdir projects

### Add custom functions to zshrc
cat ./zsh-things >> ~/.zshrc

echo "Installed homebrew, git, github cli, oh my zsh, iterm and vscode, made the projects directory, and added custom aliases."