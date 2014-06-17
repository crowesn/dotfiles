export EDITOR=vim
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# .bashrc

# User specific aliases and functions

alias ll='ls -la'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ctags="brew --prefex'/bin/ctags'"
alias panboot="pandoc --template ~/.pandoc/pandoc-bootstrap/template.html --css ~/.pandoc/pandoc-bootstrap/template.css --self-contained --toc --toc-depth 2"
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
