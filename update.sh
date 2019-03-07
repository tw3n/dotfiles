#!/bin/sh

echo "Updating dependencies..."

# Homebrew
brew update
brew upgrade
brew cask upgrade
brew cleanup

# Mac App Store
mas upgrade

# fishline
cd fish/fishline
git pull
cd -

echo "Done"
