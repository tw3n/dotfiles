#!/bin/sh

# Fish
if ! grep -q fish /etc/shells; then
    echo "Changing shell to fish..."
    echo /usr/local/bin/fish >> /etc/shells
    chsh -s /usr/local/bin/fish
fi

# fishline
if [ ! -d $(pwd)/fish/fishline ]; then
    echo "Installing fishline..."
    git clone https://github.com/0rax/fishline.git/ $(pwd)/fish/fishline
fi

# Symlinks
ln -fns $(pwd)/fish ~/.config/fish
ln -fs $(pwd)/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -fns $(pwd)/yed ~/Library/yWorks/yEd/palettes

echo "Done"
