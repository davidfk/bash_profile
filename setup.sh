#!/bin/bash

set -x
set -e

cp inputrc ~/.inputrc
cp bashrc ~/.bashrc
cp bash_profile ~/.bash_profile
cp tmux.conf ~/.tmux.conf

# tmux setup
if [ -d ~/.tmux ]; then
  rm -rf ~/.tmux
fi
mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# vim setup
cp vimrc ~/.vimrc
if [ -d ~/.vim ]; then
  rm -rf ~/.vim
fi
cp -r vim ~/.vim
mkdir -p ~/.vim/autoload ~/.vim/plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# git prompt setup
if [ -d ~/.bash-git-prompt ]; then
  rm -rf ~/.bash-git-prompt
fi
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
cp git-prompt-colors.sh ~/.git-prompt-colors.sh
