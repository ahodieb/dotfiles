
# zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions 
[ -d "${HOME}/.zsh/zsh-autosuggestions" ] && source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#Z - Jump around
source ${HOMEBREW_PREFIX}/Cellar/z/1.9/etc/profile.d/z.sh

### Papyrus ###
export PAPYRUS_HOME="$HOME/.papyrus/bin"
if [ -d "$PAPYRUS_HOME" ]; then
    export PATH=$PATH:$PAPYRUS_HOME
    alias j="papyrus open"
    alias vj="papyrus open --editor=vim"
fi
### -------------------------- ###
