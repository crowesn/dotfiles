#!/bin/sh

cp ~/.bashrc .bashrc
cp ~/.profile .profile
cp ~/.bash_profile .bash_profile
cp ~/.gitconfig .gitconfig
cp ~/.vimrc .vimrc
cp ~/.tmux.conf .tmux.conf
cp ~/.gitignore_global .gitignore_global
cp ~/.gitconfig .gitconfig
mkdir ./.vim/
cp -rf ~/.vim/colors/ ./.vim/colors/
cp -rf ~/.tmuxinator/ ./.tmuxinator/
