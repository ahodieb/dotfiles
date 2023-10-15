#!/usr/bin/env sh

set -e

[ ! -d "${HOME}/.dotfiles" ] && git clone https://github.com/ahodieb/dotfiles.git ~/.dotfiles
git -C ~/.dotfiles config user.name "Abdallah Hodieb"
git -C ~/.dotfiles config user.email "abdallah.hodieb@gmail.com"

ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/zprofile ~/.zprofile
ln -s ~/.dotfiles/git/gitconfig-global ~/.gitconfig


link_vim () {
  if [ -d "${HOME}/.vim" ]; then
    rm -rf ~/.vim ~/.vimrc
  fi

  mkdir ~/.vim
  ln -s ~/.dotfiles/vim/vimrc.d ~/.vim/vimrc.d
  ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
}
