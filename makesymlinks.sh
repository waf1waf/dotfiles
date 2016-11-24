#!/bin/bash
#######################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfile
#######################

# Variables

dir=~/dotfiles
olddir=~/dotfiles_old
files="bashrc vimrc zshrc oh-my-zsh tmux.conf" # List of files/folders to sync

########

# Create dotfiles_old in homedir
echo "Creating $olddir for backup of anhy existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# Change to dotfiles directory
echo "Changing to $dir directory"
cd $dir
echo "...done"

# Move any exisint dotfile in homedir to dotfiles_old directory
for file in $files; do
    echo "Moving anhy existing dotfiles form ~ to $olddir"
    mv ~/.file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
