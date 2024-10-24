#!/usr/bin/env sh

set -e

[ ! -d "${HOME}/.dotfiles" ] && git clone https://github.com/ahodieb/dotfiles.git ~/.dotfiles
git -C ~/.dotfiles config user.name "Abdallah Hodieb"
git -C ~/.dotfiles config user.email "abdallah.hodieb@gmail.com"

ln -sf ~/.dotfiles/zshrc ~/.zshrc
ln -sf ~/.dotfiles/zprofile ~/.zprofile
ln -sf ~/.dotfiles/git/gitconfig ~/.gitconfig
