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
git clone --quiet https://github.com/sainnhe/everforest.git ~/.config/nvim/pack/themes/start/everforest.git


# Todo-higlight
echo "Setting up: Folke-todohighlight"
git clone --quiet https://github.com/nvim-lua/plenary.nvim ~/.config/nvim/pack/plugins/start/plenary.nvim
git clone --quiet https://github.com/folke/todo-comments.nvim ~/.config/nvim/pack/plugins/start/todo-comments.nvim

# vim-sleuth
echo "Setting up: vim-sleuth"
git clone --quiet https://github.com/tpope/vim-sleuth.git ~/.config/nvim/pack/plugins/start/vim-sleuth


# Comment
echo "Setting up: Comment"
git clone --quiet https://github.com/numToStr/Comment.nvim ~/.config/nvim/pack/plugins/start/Comment.nvim

# Gitsigns
echo "Setting up: Gitsigns"
git clone --quiet https://github.com/lewis6991/gitsigns.nvim.git ~/.config/nvim/pack/plugins/start/gitsigns.nvim

# whichkey
echo "Setting up: folke Whichkey"
git clone --quiet https://github.com/folke/which-key.nvim.git ~/.config/nvim/pack/plugins/start/which-key.nvim


# conform
echo "Setting up: autoformat"
git clone --quiet https://github.com/stevearc/conform.nvim.git ~/.config/nvim/pack/plugins/start/conform.nvim

# telescope
echo "Setting up: telescope"
git clone --quiet --branch 0.1.x https://github.com/nvim-telescope/telescope.nvim.git ~/.config/nvim/pack/plugins/start/telescope.nvim
if command -v make &> /dev/null; then
    git clone --quiet https://github.com/nvim-telescope/telescope-fzf-native.nvim.git ~/.config/nvim/pack/plugins/start/telescope-fzf-native.nvim
    cd ~/.config/nvim/pack/plugins/start/telescope-fzf-native.nvim
    echo "Make telescope-fzf-native"
    make
    cd ~/Documents/repos/manual-vim
fi
git clone --quiet https://github.com/nvim-telescope/telescope-ui-select.nvim.git ~/.config/nvim/pack/plugins/start/telescope-ui-select.nvim
# If you have a Nerd Font and want icons
git clone --quiet https://github.com/nvim-tree/nvim-web-devicons.git ~/.config/nvim/pack/plugins/start/nvim-web-devicons.nvim


# lspconfig
echo "Setting up: nvim-lspconfig"
git clone --quiet https://github.com/neovim/nvim-lspconfig.git ~/.config/nvim/pack/plugins/start/nvim-lspconfig.git


echo "Setup complete."

