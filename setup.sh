#!/bin/bash

# Required packages
# python
# python3
# tmux
# powerline (pip install --user powerline-status)

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

# Install vim-plug
echo "Installing vim plug..."
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Setup symlinks
echo "Creating symlinks"
ln -s "$SCRIPTPATH/.fonts" ~/
ln -s "$SCRIPTPATH/.bashrc" ~/
ln -s "$SCRIPTPATH/.gitconfig" ~/
ln -s "$SCRIPTPATH/.tmux.conf" ~/
mkdir -p ~/.config/nvim
ln -s "$SCRIPTPATH/.init.vim" ~/.config/nvim/

# register fonts
fc-cache
