#!/bin/bash

if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "You already have oh-my-zsh"
    exit 1
fi

pushd .
cd
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
popd

cp $HOME/dotfiles/agnoster.zsh-theme $HOME/.oh-my-zsh/themes/
mv $HOME/.zshrc /tmp/zshrc
ln -s $HOME/dotfiles/zshrc $HOME/.zshrc
