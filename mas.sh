#!/usr/bin/env bash

# Mac App Store apps have IDs. You can find these
# with `mas search <name>`.

apps=(
  926036361 # LastPass.
)

for app in "${apps[@]}"; do
    mas install $app
done
