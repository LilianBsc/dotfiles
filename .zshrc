# Starship

eval "$(starship init zsh)"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
#
# Aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/.git --work-tree=$HOME'
alias lsl='ls -l'
alias lnvim='NVIM_APPNAME=nvim-lazyvim nvim'
alias todo='nvim ~/todo/ToDo.md'
alias gl='git log --pretty=format:"%C(yellow)%h %C(blue)%an %C(green)%ad %C(reset)%s" --date=short --color'
alias opencode-sw='OPENCODE_CONFIG_DIR="/home/lilian/.config/opencode-swarm" opencode'

# add .local/bin to path
export PATH="$HOME/.local/bin:$PATH"

# opencode
export PATH="$HOME/.opencode/bin:$PATH"

# locam special variables
source $HOME/.locam.env

# bun completions
[ -s "/home/lilian/.bun/_bun" ] && source "/home/lilian/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Claude Code -> Mammouth (via local header-sanitizing proxy on 127.0.0.1:8787)
# The proxy strips the `advisor-tool-*` beta header that Mammouth rejects.
# Service: systemctl --user status mammouth-claude-proxy
export ANTHROPIC_BASE_URL="http://127.0.0.1:8787"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"


# Gitlab
