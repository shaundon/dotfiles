#!/usr/bin/env bash

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install other useful binaries.
formulae=(
  git
  bash-completion
  mas
  pyenv
)

for formula in "${formulae[@]}"; do
    if brew list "$formula" > /dev/null 2>&1; then
        echo "$formula already installed... skipping."
    else
        brew install $formula
    fi
done

# Brew cask.
brew tap caskroom/cask

# Install some stuff from cask.
casks=(
  iterm2
  atom
  dropbox
  google-chrome
  spotify
  telegram
  messenger
  slack
  lastpass
)

for cask in "${casks[@]}"; do
    if brew cask list "$cask" > /dev/null 2>&1; then
        echo "$cask already installed... skipping."
    else
        brew cask install $cask
    fi
done

# Remove outdated versions from the cellar.
brew cleanup
