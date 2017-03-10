# Shaun's dotfiles

## About

My personal 'new Mac setup script', originally based on the famous  [dotfiles](https://github.com/mathiasbynens/dotfiles).

A non-exhaustive list of what this installs:
* Homebrew plus a few packages.
* Lots of apps through MAS and Cask.
* NVM.
* Various macOS settings.
* Some cool aliases and bash functions.

## Installation

```bash
git clone https://github.com/shaundon/dotfiles.git && cd dotfiles && ./new-mac.sh
```

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.
