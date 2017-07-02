#!/bin/bash

if [ $# -ne 1 ]; then
	echo "$0 [work|home]"
elif [ $1 == "work" ]; then
	rm -f ~/.gitconfig
	ln -s ~/.dotfiles/gitconfig-work ~/.gitconfig
elif [ $1 == "home" ]; then
	rm -f ~/.gitconfig
	ln -s ~/.dotfiles/gitconfig-home ~/.gitconfig
else
	echo "$0 [work|home]"
fi
