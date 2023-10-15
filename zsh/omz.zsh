local OH_MY_ZSH_DIR=~/.oh-my-zsh
if [ ! -d "${OH_MY_ZSH_DIR}" ]; then
  echo "⚠️  oh-my-zsh is not installed, install it from https://github.com/ohmyzsh/ohmyzsh#getting-started"
else

  ZSH_THEME="powerlevel10k/powerlevel10k"
  plugins=(
    z
  )

  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  source "${OH_MY_ZSH_DIR}/oh-my-zsh.sh"
fi
