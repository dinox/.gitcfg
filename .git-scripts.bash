#!/bin/bash

# Git completion
if [ -f ~/.gitcfg/git-completion.bash ]; then
    source ~/.gitcfg/git-completion.bash
fi

if [ -f ~/.gitcfg/git-prompt.sh ]; then
    source ~/.gitcfg/git-prompt.sh
fi

# Aliases
alias ga='git add'
alias gs='git status'
alias gl='git log'
alias gd='git diff'
alias gup='git push'
alias gp='git pull'
alias gc='git clone'

# Bash branch name
green=$(tput setaf 2)
blue=$(tput setaf 4)
bold=$(tput bold)
red=$(tput setaf 1)
reset=$(tput sgr0)
PS1='\u@\[$green\]\h\[$reset\]:\w\[$blue\]$(__git_ps1)\[$reset\] \$ '
