#!/usr/bin/env sh

set -e 

### -------------------------- ###

### Install tools to make the terminal better
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions  # Autosuggest commands based on history

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

brew install z # z - tool to jump around to recent directories
brew install rg
### -------------------------- ###

### Install cli tools ###
brew install git
brew install jq
### -------------------------- ###

### Install my dotfiles ###
git clone git@github.com:ahodieb/dotfiles.git ~/.dotfiles
rm -f ~/.dotfiles/.git/config
ln -s ~/.dotfiles/gitconfig  ~/.dotfiles/.git/config

rm -f ~/.zshrc
ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc

git clone https://github.com/powerline/fonts.git --depth=1 /tmp/fonts/
/tmp/fonts/install.sh
rm -rf /tmp/fonts

mkdir ~/.vim
ln -s ~/.dotfiles/vim/vimrc.d ~/.vim/vimrc.d
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
### -------------------------- ###

### Install runtimes ###
## Python
brew install pyenv 
pyenv install 3.9.0
pyenv global 3.9.0
eval "$(pyenv init -)"
pip install requests pipenv matplotlib tabulate cookiecutter
## NodeJs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash # https://github.com/nvm-sh/nvm#install--update-script
nvm install --lts
node --version

## GoLang
brew install golang
### -------------------------- ###

### Install applications ###
brew install visual-studio-code
brew install clipy # https://github.com/Clipy/Clipy
brew install --cask rectangle # https://github.com/rxhanson/Rectangle
brew install --cask fork
### -------------------------- ###
