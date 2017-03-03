# Setup zsh
ZSH=$HOME/.oh-my-zsh
DISABLE_UPDATE_PROMPT="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git npm brew vagrant min zsh-autosuggestions zsh-syntax-highlighting)

# Dotfiles path
export DOTFILES=$(dirname $(readlink ${(%):-%N}))

# Add sourses
source $DOTFILES/.exports
source $ZSH/oh-my-zsh.sh
source $DOTFILES/.aliases

# Add completions
fpath=(~/.oh-my-zsh/completions $fpath)
autoload -U compinit && compinit

# Set plugin defaults
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=247"
