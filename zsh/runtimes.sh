### Include GOPATH to $PATH ###
export GOPATH=$HOME/.go
export PATH=$GOPATH/bin:$PATH
### -------------------------- ###

### Python bin folder ###
if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"   
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi
USER_BASE_PATH=$(python3 -m site --user-base)
export PATH=$PATH:$USER_BASE_PATH/bin
### -------------------------- ###

### NVM for NodeJS ###
if [ -d "$HOME/.pyenv" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
fi 
### -------------------------- ###

### Android SDK ###
if [ -d "$HOME/Library/Android/sdk" ]; then
  export ANDROID_HOME=$HOME/Library/Android/sdk
  export PATH=$PATH:$ANDROID_HOME/tools
  export PATH=$PATH:$ANDROID_HOME/platform-tools
fi
### -------------------------- ###

### Flutter SDK ###
if [ -d "$HOME/.flutter" ]; then
  export FLUTTER_HOME="$HOME/.flutter"
  export PATH=$PATH:$FLUTTER_HOME/bin
fi
### -------------------------- ###

###  GCP CLI & SDK  ###
if [ -f "$DEV_TOOLS/google-cloud-sdk/path.zsh.inc" ]; then . "$DEV_TOOLS/google-cloud-sdk/path.zsh.inc"; fi
if [ -f "$DEV_TOOLS/google-cloud-sdk/completion.zsh.inc" ]; then . "$DEV_TOOLS/google-cloud-sdk/completion.zsh.inc"; fi
### -------------------------- ###
