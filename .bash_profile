
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export PATH=/usr/local/bin:$PATH:/usr/texbin
[[ -s ~/.bashrc ]] && source ~/.bashrc

if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
    fi
export JENAROOT=/Users/crowesn/Library/apache-jena-2.13.0/bin:/Users/crowesn/Library/apache-jena-fuseki-2.0.0/
export PATH=/usr/local/sbin:$PATH
export PATH=$JENAROOT:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
