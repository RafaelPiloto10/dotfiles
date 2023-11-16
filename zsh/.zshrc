# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
ZSH_DISABLE_COMPFIX=true
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="peepcode-custom"

plugins+=(git docker)
ZVM_VI_EDITOR=nvim
source $ZSH/oh-my-zsh.sh


export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin:$HOME/go/bin/gofumpt:/opt/homebrew/bin/"

alias vim="nvim"
alias vi="nvim"

# BASE16_SHELL=$HOME/.config/base16-shell/
# [ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

alias nvim_setup="rm -rf ~/.config/nvim && cp -r ~/dotfiles/nvim ~/.config"
alias kitty_theme="kitty +kitten themes"
