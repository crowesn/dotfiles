export PATH=/usr/local/bin:$PATH:/usr/texbin
[[ -s ~/.bashrc ]] && source ~/.bashrc

# load OS X configs
usernamestring=`uname`
if [ '$usernamestring' == 'Darwin' ]; then
  . ~/.bash_osx
fi
