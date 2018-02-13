#!/bin/bash

set -x
set -e

cp inputrc ~/.inputrc
cp bashrc ~/.bashrc
cp bash_profile ~/.bash_profile
cp tmux.conf ~/.tmux.conf

# vim setup
cp vimrc ~/.vimrc
rm -rf ~/.vim
cp -r vim ~/.vim
mkdir -p ~/.vim/autoload ~/.vim/autoload
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/ntpeters/vim-better-whitespace.git ~/.vim/bundle/vim-better-whitespace

# git prompt setup
rm -rf ~/.bash-git-prompt
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
cp git-prompt-colors.sh ~/.git-prompt-colors.sh
