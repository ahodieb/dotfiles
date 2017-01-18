#!/usr/bin/env sh

echo "Install homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo chown $(whoami):admin /usr/local && sudo chown -R $(whoami):admin /usr/local

echo "Installing applications using homebrew"
brew bundle -v --file=$DOTFILES_DIR/homebrew/Brewfile