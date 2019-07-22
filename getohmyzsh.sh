#!/bin/bash

# Make sure it isn't already intalled, exit if it is
if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "You already have oh-my-zsh"
    exit 0
fi

# Save the current directory
pushd .

# Install oh-my-zsh
cd
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Move the original .zshrc out of the way and create a symlink to the one in the .dotfiles directory
mv $HOME/.zshrc /tmp/zshrc
ln -s $HOME/.dotfiles/zshrc $HOME/.zshrc

# Get useful plugins for oh-my-zsh and put them in the custom plugins directory
mkdir -p $HOME/.oh-my-zsh/custom/plugins
cd $HOME/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git

# z.sh is here in the .dotfiles directory.  If you don't touch the file, there will
# be a warning the first time it runs.  This will create the file if it doesn't exist.
touch ~/.z

# Return to the saved directory
popd
