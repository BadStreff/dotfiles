# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

export TERM="screen-256color"

if command -v nvim>/dev/null; then
  alias vi="/usr/bin/nvim"
  alias vim="/usr/bin/nvim"
fi

if command -v tmux>/dev/null; then
  [[ ! $TERM == screen ]] && [ -z $TMUX ] && exec tmux
fi

# User specific aliases and functions
if command -v pipenv>/dev/null; then
  eval "$(pipenv --completion)"
fi


if command -v powerline>/dev/null; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . ~/.local/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh
fi
