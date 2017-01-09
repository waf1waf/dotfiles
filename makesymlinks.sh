#!/bin/bash
#######################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfile
#######################

# Variables

dir=$HOME/dotfiles
olddir=$HOME/dotfiles_old
files="bashrc vimrc zshrc tmux.conf" # List of files/folders to sync

########

# Create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in $HOME"
mkdir -p $olddir
echo "...done"

# Change to dotfiles directory
echo "Changing to $dir directory"
cd $dir
echo "...done"


# Move any exisint dotfile in homedir to dotfiles_old directory
for file in $files; do
    echo "Moving any existing dotfiles form $HOME to $olddir"
    mv $HOME/.$file $HOME/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file $HOME/.$file
done

if [ ! -d "$HOME/.ssh" ]; then
    echo "No .ssh directory, so create one with ssh-keygen"
    ssh-keygen -f $HOME/.ssh/id_rsa -t rsa -N ''
fi

rm -f $HOME/.ssh/config
ln -s ./config $HOME/.ssh/config
