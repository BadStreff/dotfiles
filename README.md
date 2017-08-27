## Installation

* Install [vim-plug](https://github.com/junegunn/vim-plug)
```bash
 curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
* Open vim, type :PlugInstall to get the latest of all the vim plugins

![vim-plug](https://raw.githubusercontent.com/junegunn/i/master/vim-plug/installer.gif)

* Install the [Powerline-patched fonts](https://github.com/powerline/fonts)
  * I currently have the init.vim pointed to [Meslo Slashed for Powerline](https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20S%20Regular%20for%20Powerline.ttf)

* If on macOS install [Homebrew](https://brew.sh/)
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

* Install [pyenv](https://github.com/pyenv/pyenv)

* Configure neovim to worth with python2 and python3
 * https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim

## Configuration

 * Overwrite your current default `init.vim` with the one in this repository
   * Review and customize to your preferences
