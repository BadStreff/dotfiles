# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# export GOROOT=/usr/local/go
# export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$HOME/.local/bin:/usr/local/go/bin:$PATH
export EDITOR=~/.local/bin/nvim

# setup nvim aliases
if command -v nvim>/dev/null; then
  alias vi="~/.local/bin/nvim"
  alias vim="~/.local/bin/nvim"
fi

# start powerline-daemon if it exists, needed for tmux
if command -v powerline>/dev/null; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . ~/.local/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh
fi

# setup powerline-shell
function _update_ps1() {
    PS1=$(powerline-shell $?)
}
if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# auto-start tmux
function start_tmux() {
    if type tmux &> /dev/null; then
        #if not inside a tmux session, and if no session is started, start a new session
        if [[ -z "$TMUX" && -z $TERMINAL_CONTEXT ]]; then
            (tmux -2 attach || tmux -2 new-session)
        fi
    fi
}
start_tmux

# set tmux pane name to ssh host
ssh() {
    if [ "$(ps -p $(ps -p $$ -o ppid=) -o comm=)" = "tmux: server" ]; then
        tmux rename-window "$(echo $* | cut -d . -f 1)"
        command ssh "$@"
        tmux set-window-option automatic-rename "on" 1>/dev/null
    else
        command ssh "$@"
    fi
}

# enable vault autocompletion if installed
if command -v vault>/dev/null; then
  complete -C ~/.local/bin/vault vault
fi
