if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [ -d "${DOTFILES_ZSH_DIR}" ] && [ -r "${DOTFILES_ZSH_DIR}" ]; then
find "${DOTFILES_ZSH_DIR}" -maxdepth 1 -type f | while read f; do  source "$f"; done
else
  echo "DOTFILES_ZSH_DIR is not found! this breaks all zsh config." >&2
fi

if [ -d "${PRIVATE_ZSH_DIR}" ] && [ -r "${PRIVATE_ZSH_DIR}" ]; then
find "${PRIVATE_ZSH_DIR}" -maxdepth 1 -type f | while read f; do  source "$f"; done
else
  echo "PRIVATE_ZSH_DIR is not set" >&2
fi


