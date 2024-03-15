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


# Load files
echo "Cloaning everforest"
mkdir -p ~/.config/nvim/pack/themes/start
cd ~/.config/nvim/pack/themes/start
git clone https://github.com/sainnhe/everforest.git

echo "Setup complete."

