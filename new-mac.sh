#!/usr/bin/env bash

function doIt() {
  ./brew.sh;
  ./mas.sh;
  ./other-installs.sh;
  ./other-commands.sh;
  ./.macos;
  ./bootstrap.sh;
}

read -p "This will install Homebrew and associated formulae, cask and some apps, plus some MAS apps. Ready? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
	doIt;
fi;
unset doIt;
