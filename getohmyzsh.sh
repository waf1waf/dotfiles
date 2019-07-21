#!/bin/bash

if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "You already have oh-my-zsh"
    exit 0
fi

pushd .
cd
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
popd

mkdir -p $HOME/.oh-my-zsh/custom/themes
cp $HOME/dotfiles/agnoster.zsh-theme $HOME/.oh-my-zsh/custom/themes/
mv $HOME/.zshrc /tmp/zshrc
ln -s $HOME/.dotfiles/zshrc $HOME/.zshrc

mkdir -p $HOME/.oh-my-zsh/custom/plugins
cd $HOME/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
