#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install pyenv pyenv-virtualenv neovim
brew tap caskroom/fonts
brew cask install font-hack-nerd-font

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

pyenv install 2.7.14
pyenv install 3.6.3

pyenv virtualenv 2.7.14 neovim2
pyenv virtualenv 3.6.3 neovim3

# these sections may need done by hand
pyenv activate neovim2
pip install neovim
pyenv activate neovim3
pip install neovim

pyenv deactivate

ln -s "$SCRIPTPATH/.bash_profile" ~/
ln -s "$SCRIPTPATH/.gitconfig" ~/
ln -s "$SCRIPTPATH/.git-prompt.sh" ~/
ln -s "$SCRIPTPATH/.git-completion.bash" ~/
