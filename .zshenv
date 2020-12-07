export PATH=/usr/local/bin:$PATH:/usr/texbin
[[ -s ~/.zshrc ]] && source ~/.zshrc

# load OS X configs
usernamestring=`uname`

if [ $usernamestring == 'Darwin' ]; then
  . ~/.bash_osx
fi

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/sbin:$PATH"
