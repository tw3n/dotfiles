#!/bin/sh

echo "Updating dependencies..."

# Homebrew
brew update
brew upgrade
brew cask upgrade
brew cleanup

# Mac App Store
mas upgrade

echo "Done"
