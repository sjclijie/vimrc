#!/bin/bash

git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
cp -f vimrc ~/.vimrc
cp -af colors ~/.vim/
vim +BundleInstall +qa

sh ~/.vim/bundle/YouCompleteMe/install.sh
cd ~/.vim/bundle/tern_for_vim/ && npm install
cp -f tern-project ~/.tern-project
