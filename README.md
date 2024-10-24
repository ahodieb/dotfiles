# Dotfiles

Repo for hosting my dotfiles and configurations.

## Installation (Mac os)

* Setup zsh as the default shell `Preferences -> Users & Groups -> Username -> right-click -> Advanced -> Login shell`.

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ahodieb/dotfiles/main/install.sh)"
brew bundle --file="~/.dotfiles/Brewfile" install
```
