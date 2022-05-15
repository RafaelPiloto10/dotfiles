# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
ZSH_DISABLE_COMPFIX=true
# Path to your oh-my-zsh installation.
export ZSH="/users/poisson/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="afowler-custom"

plugins+=(git zsh-autosuggestions vi-mode )
ZVM_VI_EDITOR=nvim
source $ZSH/oh-my-zsh.sh

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin:$HOME/go/bin/gofumpt:/opt/homebrew/bin/"

alias vim="nvim"
alias vi="nvim"
