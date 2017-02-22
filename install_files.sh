#!/bin/sh

cp .bashrc ~/.bashrc
cp .profile ~/.profile
cp .bash_profile ~/.bash_profile
cp .bash_osx ~/.bash_osx
cp .gitconfig ~/.gitconfig
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf
cp .gitignore_global ~/.gitignore_global
cp .git-completion.bash ~/.git-completion.bash
cp .gitconfig ~/.gitconfig
mkdir ./.vim/
cp -rf ./.vim/colors ~/.vim/colors/
cp -rf ./.tmuxinator/ ~/.tmuxinator/ 
