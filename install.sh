#!/bin/sh

echo "
    ༼ つ ◕_◕ ༽つ 📦
"

# Homebrew
if hash brew &> /dev/null; then
	echo "Updating Homebrew..."
    brew update
else
    echo "Installing Homebrew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing dependencies..."
brew bundle --file=$(pwd)/macos/Brewfile

# Fish
if ! grep -q fish /etc/shells; then
    echo "Changing shell to fish..."
    echo /usr/local/bin/fish >> /etc/shells
    chsh -s /usr/local/bin/fish
fi

# Symlinks
ln -fns $(pwd)/fish ~/.config/fish
ln -fns $(pwd)/yed ~/Library/yWorks/yEd/palettes
ln -fs $(pwd)/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

echo "Done"
