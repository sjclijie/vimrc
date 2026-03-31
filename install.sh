#!/bin/bash

git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
cp -f vimrc ~/.vimrc
cp -af colors ~/.vim/
vim +BundleInstall +qa
