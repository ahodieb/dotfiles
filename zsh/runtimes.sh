### Python bin folder ###
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

USER_BASE_PATH=$(python3 -m site --user-base)
export PATH=$PATH:$USER_BASE_PATH/bin
### -------------------------- ###

### NVM for NodeJS ###
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
### -------------------------- ###

### Include GOPATH to $PATH ###
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
### -------------------------- ###

### Android SDK ###
if [ -d "$HOME/Library/Android/sdk" ]; then
  export ANDROID_HOME=$HOME/Library/Android/sdk
  export PATH=$PATH:$ANDROID_HOME/tools
  export PATH=$PATH:$ANDROID_HOME/platform-tools
fi
### -------------------------- ###

### Flutter SDK ###
if [ -d "$HOME/dev-tools/flutter" ]; then
  export FLUTTER_HOME=$HOME/dev-tools/flutter
  export PATH=$PATH:$FLUTTER_HOME/bin
fi
### -------------------------- ###