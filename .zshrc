export EDITOR=vim
export PASSWORD_STORE_DIR=~/Dropbox/Passwords/.password-store
export BASH_SILENCE_DEPRECATION_WARNING=1

# User specific aliases and functions
set -o vi
alias ll='ls -la'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias work="~/.time2work.sh"
alias play="~/.time2play.sh"

dt () {
      date +%Y%m%d ${1:+--date "$_*"}
    }
export -f dt

# Source global definitions
#if [ -f /etc/bashrc ]; then
# . /etc/bashrc
#fi

export CLICOLOR=1
export LSCOLORS=cxfxcxdxbxegedabagacad

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
 
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"
 
PS1="$NO_COLOR\u:$RED[\W]$YELLOW\$(parse_git_branch)$NO_COLOR\$ "

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Add fits
export PATH="/usr/local/bin/fits-0.8.5:$PATH"
# Search source
function bgrep { 
  ag "$@" $(bundle show --paths) . 
} 

source ~/.git-completion.bash

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add npm path
export PATH=~/.npm-global/bin:$PATH

source ~/.zprofile

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
