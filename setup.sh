#!/bin/bash

# Install homebrew and tools (optional)
 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
cd ~/.dotfiles && brew bundle

# Symlink dotfiles (optional)
 stow .

