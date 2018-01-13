#!/bin/bash

set -x
set -e

cp inputrc ~/.inputrc
cp bash_profile ~/.bash_profile
cp tmux.conf ~/.tmux.conf

# vim setup
cp vimrc ~/.vimrc
mkdir -p ~/.vim/autoload ~/.vim/autoload
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone git://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone git://github.com/ntpeters/vim-better-whitespace.git ~/.vim/bundle/vim-better-whitespace

