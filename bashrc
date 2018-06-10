#!/bin/bash

set -o vi

# editor
export EDITOR=vim

# color (for mac terminal)
export CLICOLOR=1

# history
HISTTIMEFORMAT='%F %T '
HISTCONTROL=ignoreboth
shopt -s histappend # append to hist file
HISTSIZE=99999
HISTFILESIZE=99999
alias h='history'

# dir traversal
alias ..='cd ..'
alias ...='cd ../..'

# fileops
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ll='ls --color=auto -ahlv'

# conda
export PATH=$HOME/anaconda3/bin:$PATH

# gcloud
export PATH=$HOME/google-cloud-sdk/bin:$PATH

# git prompt
GIT_PROMPT_ONLY_IN_REPO=0
GIT_PROMPT_THEME_FILE=$HOME/.git-prompt-colors.sh
source $HOME/.bash-git-prompt/gitprompt.sh
