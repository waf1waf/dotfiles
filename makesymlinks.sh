#!/bin/bash
#######################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfile
#######################

# Variables

dir=$HOME/.dotfiles
olddir=$HOME/.dotfiles_old
files="vimrc zshrc tmux.conf" # List of files/folders to sync

########

# Create dotfiles_old in homedir
if [ ! -d $olddir ]; then
    echo "Creating $olddir for backup of any existing dotfiles in $HOME"
    mkdir -p $olddir
fi

# Change to dotfiles directory
echo "Changing to $dir directory"
cd $dir

# Move any exisint dotfile in homedir to dotfiles_old directory
echo "Creating symlinks"
for file in $files; do
    if [ -e $HOME/.$file ]; then
        if [ -L $HOME/.$file ]; then
            echo "  Removing old symlink $HOME/.$file"
            rm $HOME/.$file
        else
            echo "  Moving $HOME/.$file to $olddir"
            mv $HOME/.$file $olddir
        fi
    fi
    echo "  Creating symlink to ~/$file"
    ln -s $dir/$file $HOME/.$file
done

echo "Creating ssh keys"
if [ ! -d "$HOME/.ssh" ]; then
    echo "No .ssh directory, so create one with ssh-keygen"
    ssh-keygen -f $HOME/.ssh/id_rsa -t rsa -N ''
fi

rm -f $HOME/.ssh/config
ln -s $dir/config $HOME/.ssh/config


# Make directory for persistent undo
echo "Create vim persistent undo directory"
mkdir -p ~/.vim/undodir

# Remove default directories 
# Don't worry, this will fail if the directory is not empty
echo "Remove default directories"
rmdir /home/waynef/Desktop /home/waynef/Documents /home/waynef/Downloads /home/waynef/Music /home/waynef/Pictures /home/waynef/Public /home/waynef/Templates /home/waynef/Videos 2>/dev/null
