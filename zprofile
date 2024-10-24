export LANG=en_US.UTF-8
export EDITOR='nvim'
export DOTFILES_ZSH_DIR="${HOME}/.dotfiles/zsh.d"
export PRIVATE_ZSH_DIR="${HOME}/.zsh_private.d"

[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"
