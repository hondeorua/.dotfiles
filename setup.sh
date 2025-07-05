#!/bin/bash

# Install homebrew and tools (optional)
 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
 brew bundle --file=~/dotfiles/Brewfile

# Symlink dotfiles (optional)
 stow .

