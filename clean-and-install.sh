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


# Copy nvim_base to ~/.config/nvim
echo "Setting up new nvim configuration..."
mkdir -p ~/.config/nvim
cp -r nvim_base/* ~/.config/nvim


# Everforest theme
echo "Setting up: Theme Everforest"
mkdir -p ~/.config/nvim/pack/themes/start
cd ~/.config/nvim/pack/themes/start
git clone --quiet https://github.com/sainnhe/everforest.git


# Todo-higlight
echo "Setting up: Folke-todohighlight"
git clone --quiet https://github.com/nvim-lua/plenary.nvim ~/.config/nvim/pack/vendor/start/plenary.nvim
git clone --quiet https://github.com/folke/todo-comments.nvim ~/.config/nvim/pack/vendor/start/todo-comments.nvim

echo "Setup complete."

