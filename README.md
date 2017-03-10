# Shaun's dotfiles

## About

My personal 'new Mac setup script', originally based on the famous  [dotfiles](https://github.com/mathiasbynens/dotfiles).

A non-exhaustive list of what this installs:
* [Homebrew](https://brew.sh/) plus a few packages.
* Lots of apps through [MAS](https://github.com/mas-cli/mas) and [Cask](https://caskroom.github.io/).
* NodeJS and NPM via [NVM](http://nvm.sh).
* Various macOS settings.
* Some cool aliases and bash functions.
* Tells iterm to look in Dropbox for the preferences.

## Installation

Download this repo (because you don't have Git yet!), then `cd` into it and run `./new-mac.sh`.

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

## What *doesn't* this do?

* Turn on dark mode (can't get it working).
* Sign into all your apps.
* Sort out the dock.
* Set up your screensaver.
