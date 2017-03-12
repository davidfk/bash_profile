#!/bin/bash

# color (for mac terminal)
export CLICOLOR=1

# history
HISTTIMEFORMAT='%F %T '
export HISTTIMEFORMAT
alias h='history'

# dir traversal
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'

# fileops
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ll='ls -ahlv'

# editor
export EDITOR=vim

# conda
export PATH=/Users/dkamm/anaconda3/bin:$PATH
