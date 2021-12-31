#!/usr/bin/env sh

set -e 

# Clone and setup symlinks for my dotfiles
install_dotfiles() {
    git clone git@github.com:ahodieb/dotfiles.git ~/.dotfiles
    git -C ~/.dotfiles config user.name "Abdallah Hodieb"
    git -C ~/.dotfiles config user.email "abdallah.hodieb@gmail.com"

    mv ~/.zshrc ~/.zshrc-pre-ahodieb-dotfiles
    ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc

    mkdir ~/.vim
    ln -s ~/.dotfiles/vim/vimrc.d ~/.vim/vimrc.d
    ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
}

### Install oh my zsh tools to make the terminal better
# sudo apt-get install zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# git clone https://github.com/powerline/fonts.git --depth=1 /tmp/fonts/
# /tmp/fonts/install.sh
# rm -rf /tmp/fonts
### -------------------------- ###

install_dotfiles



# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions  # Autosuggest commands based on history
