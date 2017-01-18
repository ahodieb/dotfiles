#!/usr/bin/env sh

echo "Setting git configurations"

# set global .gitignore
echo "Setting git global gitignore"
git config --global core.excludesfile $DOTFILES_DIR/git/global_git_ignore

