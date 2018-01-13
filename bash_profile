#!/bin/bash

set -o vi

# editor
export EDITOR=vim

# color (for mac terminal)
export CLICOLOR=1

# history
HISTTIMEFORMAT='%F %T '
export HISTTIMEFORMAT
alias h='history'

# dir traversal
alias ..='cd ..'
alias ...='cd ../..'

# fileops
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ll='ls -ahlv'

# conda
export PATH=$HOME/anaconda3/bin:$PATH
