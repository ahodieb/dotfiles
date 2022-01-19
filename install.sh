#!/usr/bin/env sh

set -e 

clone_dotfiles () {
  [ ! -d "${HOME}/.dotfiles" ] && git clone https://github.com/ahodieb/dotfiles.git ~/.dotfiles
  git -C ~/.dotfiles config user.name "Abdallah Hodieb"
  git -C ~/.dotfiles config user.email "abdallah.hodieb@gmail.com"
}

link_zsh () {
  TMP_DIR=$(mktemp -d)
  echo "${TMP_DIR}" >> ~/.zshrc.bkp
  mv ~/.zshrc ${TMP_DIR}/zshrc.bkp
  mv ~/.zprofile ${TMP_DIR}/zprofile.bkp
  ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
  ln -s ~/.dotfiles/zsh/zprofile ~/.zprofile
}

link_gitconfig () {
  TMP_DIR=$(mktemp -d)
  echo "${TMP_DIR}" >> ~/.gitconfig.bkp
  mv ~/.gitconfig ${TMP_DIR}/gitconfig.bkp
  ln -s ~/.dotfiles/git/gitconfig-global ~/.gitconfig
}

link_vim () {
  if [ -d "${HOME}/.vim" ]; then
    rm -rf ~/.vim ~/.vimrc
  fi
  
  mkdir ~/.vim
  ln -s ~/.dotfiles/vim/vimrc.d ~/.vim/vimrc.d
  ln -s ~/.dotfiles/vim/vimrc ~/.vimrc  
}

install_oh_my_zsh () {
  if [ ! -d "${HOME}/.oh-my-zsh" ]; then
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    [ ! -d "/tmp/fonts/" ] && git clone https://github.com/powerline/fonts.git --depth=1 /tmp/fonts/ && /tmp/fonts/install.sh
  fi
}

install_homebrew () {
  [ ! -d "/opt/homebrew" ] && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
}

install_apps () {
  if [ -d "/opt/homebrew" ]; then
    brew install git jq rg z fzf coreutils grep
    brew install clipy rectangle fork iterm2 visual-studio-code
    brew install golang pyenv
    pyenv install --skip-existing 3.10.1
    pyenv global 3.10.1
  fi
}

install_oh_my_zsh
clone_dotfiles
link_zsh
link_gitconfig
link_vim
install_homebrew
install_apps