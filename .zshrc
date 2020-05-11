# .zshrc
# -----------------------------

export DOTFILES_CONFIG="$HOME/.dotfiles-config"

source $DOTFILES_CONFIG/.alias
source $DOTFILES_CONFIG/.env
source $DOTFILES_CONFIG/.function
source $DOTFILES_CONFIG/.path
source $DOTFILES_CONFIG/.prompt
source $DOTFILES_CONFIG/.zplug

source $ZSH/oh-my-zsh.sh

plugins=(git docker nvm node npm)
