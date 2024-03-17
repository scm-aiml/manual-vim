#!/bin/zsh

# Define directories to remove
directories=(~/.local/state/nvim ~/.local/share/nvim ~/.config/nvim)

# Loop through each directory and remove it
for dir in $directories; do
    if [[ -d $dir ]]; then # Check if directory exists
        echo "Removing $dir"
        rm -rf $dir
    else
        echo "$dir does not exist."
    fi
done

