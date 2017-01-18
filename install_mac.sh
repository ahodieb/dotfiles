#!/usr/bin/env sh
CUR_DIR=`pwd`
cd `dirname $0`
export DOTFILES_DIR=$HOME/Dotfiles
#----------------------

#Installing homebrew
source $DOTFILES_DIR/homebrew/install.sh

# Install commmon config
source $DOTFILES_DIR/install_common.sh

# ---------------------

echo "Done. Enjoy :)"
cd $CUR_DIR