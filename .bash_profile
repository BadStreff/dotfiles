# if [ -f ~/.git-completion.bash ]; then
#     . ~/.git-completion.bash
# fi

green=$(tput setaf 2)
blue=$(tput setaf 4)
bold=$(tput bold)
red=$(tput setaf 1)
reset=$(tput sgr0)

# if [ -f ~/.git-prompt.sh ]; then
#   source ~/.git-prompt.sh
#   GIT_PS1_SHOWDIRTYSTATE=true
#   export PS1='\u@\h \w\[$blue\]$(__git_ps1)\[$reset\]\$ '
# fi



function _update_ps1() {
    PS1="$(/Users/ajf023/.pyenv/versions/3.6.3/bin/powerline-shell $?)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH

TERM=xterm-256color

export PATH="/Users/ajf023/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
