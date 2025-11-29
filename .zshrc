# Starship

eval "$(starship init zsh)"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/.git --work-tree=$HOME'
alias lsl='ls -l'
alias lnvim='NVIM_APPNAME=nvim-lazyvim nvim'
alias todo='nvim ~/todo/ToDo.md'

# add .local/bin to path
export PATH="$HOME/.local/bin:$PATH"
