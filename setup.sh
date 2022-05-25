#!/bin/bash

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Finish homebrew installation
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

### Install dev stuff

# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# git
brew install git

# GitHub, plus login
brew install gh

### Apps
brew install --cask iterm2
brew install --cask visual-studio-code

### Other stuff

# Make the projects directory
mkdir projects

### Add custom functions to zshrc

echo '

###
### START OF CUSTOM SCRIPTS
###

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}

# Go to a project folder. If no args, goes to ~/projects
# If an arg supplied, goes to ~/projects/<arg>
function p {
  cd ~/projects/$1
}

# cd to ~/projects, clone a repo and cd into it.
function clone {
	p;
	git clone $1;

	# basename just grabs the "reponame.git" part.
	reponame=$(basename $1);

	# replace ".git" with an empty string.
	cd ${reponame/.git/};
}

alias bcs="brew search --cask"
alias bci="brew install --cask"
alias zedit="code ~/.zshrc"

###
### END OF CUSTOM SCRIPTS
###

' >> ~/.zshrc

echo "Installed homebrew, git, github cli, oh my zsh, iterm and vscode, made the projects directory, and added custom aliases."