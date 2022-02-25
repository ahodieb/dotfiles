local OH_MY_ZSH_DIR=~/.oh-my-zsh
if [ ! -d "${OH_MY_ZSH_DIR}" ]; then
  echo "⚠️  oh-my-zsh is not installed, install it from https://github.com/ohmyzsh/ohmyzsh#getting-started"
else
  DEFAULT_USER=$USER
  HYPHEN_INSENSITIVE="true"
  ZSH_DISABLE_COMPFIX=true
  
  # ZSH_THEME="agnoster"
  ZSH_THEME="powerlevel10k/powerlevel10k"
  plugins=(
    z
    fzf
    ripgrep
    gnu-utils
    zsh-autosuggestions
  )

  source "${OH_MY_ZSH_DIR}/oh-my-zsh.sh"
fi
