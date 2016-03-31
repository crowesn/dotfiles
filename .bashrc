export EDITOR=vim

# .bashrc

# User specific aliases and functions
set -o vi
alias trash="rmtrash"
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias ll='ls -la'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
function cd {
    builtin cd "$@" && ls -F
        }
alias ctags="`brew --prefix`/bin/ctags"
alias panboot="pandoc --template ~/.pandoc/pandoc-bootstrap/template.html --css ~/.pandoc/pandoc-bootstrap/template.css --self-contained --toc --toc-depth 2"

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

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
