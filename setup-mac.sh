#!/usr/bin/env sh

set -e 

[ ! -d "/opt/homebrew" ] && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
[ ! -d "${HOME}/.oh-my-zsh" ] && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
[ ! -d "/tmp/fonts" ] && git clone https://github.com/powerline/fonts.git --depth=1 /tmp/fonts/ && /tmp/fonts/install.sh
[ ! -d "${HOME}/.dotfiles" ] && git clone https://github.com/ahodieb/dotfiles.git ~/.dotfiles && \
  git -C ~/.dotfiles config user.name "Abdallah Hodieb" && \
  git -C ~/.dotfiles config user.email "abdallah.hodieb@gmail.com"

mv ~/.zshrc ~/tmp/zshrc-pre-ahodieb-dotfiles
ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc

[ ! -d "${HOME}/.vim" ] && mkdir ~/.vim && \
ln -s ~/.dotfiles/vim/vimrc.d ~/.vim/vimrc.d && \
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc 

brew install git jq rg z fzf coreutils grep graphviz iterm2 visual-studio-code clipy golang rectangle fork

## Python
brew install pyenv 
pyenv install --skip-existing 3.10.1
pyenv global 3.10.1
eval "$(pyenv init -path)"
pip install --upgrade pip
pip install requests pipenv matplotlib tabulate
