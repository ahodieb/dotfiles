
###  zsh-autosuggestions  ###
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#manual-git-clone
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
### -------------------------- ###

###  Z - Jump around  ###
# brew install z fzf
# source /usr/local/Cellar/z/1.9/etc/profile.d/z.sh

# Fuzzy search (uzing fzf) over recent folders
# Usage: zl <search>
function zl() {
    cd "$(z -l $@ | tr -s ' ' | cut -f2 -d ' ' | fzf)"
}
### -------------------------- ###

###  FZF - Fuzzy search  ###
# Interactive fuzzy search over grep results
# Usage: .... | fzfgrep <grep arguments>, eg: "history | fzfgrep ssh"
function fzfgrep() {
  grep -rin $@ | fzf
}

function fzfgrep_to_editor() {
  line="$(fzfgrep $@)"
  file="$(echo $line | cut -f1 -d ':')"
  line_num="$(echo $line | cut -f2 -d ':')"

  open_editor_at_line $EDITOR $file $line_num
}

alias gfz="fzfgrep_to_editor"
### -------------------------- ###

### Papyrus ###
export PAPYRUS_HOME="$HOME/PersonalDev/papyrus/bin"
if [ -d "$PAPYRUS_HOME" ]; then
    export PATH=$PATH:$PAPYRUS_HOME
    alias j="papyrus open"
    alias vj="papyrus open --editor=vim"
fi
### -------------------------- ###
