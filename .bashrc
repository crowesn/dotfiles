export EDITOR=vim

# virtual env config
VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3.6
export VIRTUALENVWRAPPER_PYTHON
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/development
source /Library/Frameworks/Python.framework/Versions/3.6/bin/virtualenvwrapper.sh


# User specific aliases and functions
set -o vi
alias ll='ls -la'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias tags='ctags -R -f ./.git/tags .'
alias lynx='lynx -accept_all_cookies'
alias panboot="pandoc --template ~/.pandoc/pandoc-bootstrap/template.html --css ~/.pandoc/pandoc-bootstrap/template.css --self-contained --toc --toc-depth 2"
alias sudo='sudo '
alias time2work="~/.time2work.sh"
alias time2play="~/.time2play.sh"

dt () {
      date +%Y%m%d ${1:+--date "$_*"}
    }
export -f dt

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

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
export PATH="$PATH:$HOME/.rvm/bin"
source ~/.profile
