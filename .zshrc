#===============================================================================
#                                     __             
#                         ____  _____/ /_  __________
#                        /_  / / ___/ __ \/ ___/ ___/
#                         / /_(__  ) / / / /  / /__  
#                        /___/____/_/ /_/_/   \___/  
#                        
#===============================================================================
#                               @cfsanderson

# Path to my oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/bin:/usr/local/bin:$PATH
#export PATH="/usr/local/sbin:$PATH"

export EDITOR=/usr/bin/nvim

ZSH_THEME="agnoster"

setopt autocd
setopt noclobber

set guifont="Fira Code Nerd Font" 11
set encoding=utf8

ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

plugins=(
    asdf
    git
    npm
    osx
    web-search
    zsh-completions
    zsh-syntax-highlighting
)

# custom folder
ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

# aliases moved to ~/.oh-my-zsh/custom/aliases.zsh

source $ZSH/oh-my-zsh.sh

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)

# initialise completions with ZSH's compinit
autoload -Uz compinit
compinit

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

neofetch
