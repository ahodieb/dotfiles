#!/usr/bin/env sh

# Installing Oh my zsh
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Installing awesome vim
echo "Installing awesome vim"
git clone https://github.com/amix/vimrc.git $HOME/.vim_runtime
sh $HOME/.vim_runtime/install_awesome_vimrc.sh

# Add zsh configs to the .zshrc files
echo "Setup zsh dotfiles"
echo "# Dotfiles (github.com/AbdallahHodieb/Dotfiles)" >> "$HOME/.zshrc" 
echo "$DOTFILES_DIR/zsh/zshrc.sh" >> "$HOME/.zshrc" 

echo "Configuring git"
source $DOTFILES_DIR/git/install.sh

