#!/usr/bin/env sh

set -e

[ ! -d "${HOME}/.dotfiles" ] && git clone https://github.com/ahodieb/dotfiles.git ~/.dotfiles
git -C ~/.dotfiles config user.name "Abdallah Hodieb"
git -C ~/.dotfiles config user.email "abdallah.hodieb@gmail.com"

ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/zprofile ~/.zprofile
ln -s ~/.dotfiles/git/gitconfig-global ~/.gitconfig


