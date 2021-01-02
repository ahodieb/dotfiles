# expand relative paths
_expand_relative_path() {
  if [[ -d "$1" ]]; then
    cur_dir=$(pwd)
    cd "$1" >/dev/null
    pwd
    cd "$cur_dir" >/dev/null
  fi
}

# ssh to a remote host and change path to the specified directory
ssh_to_remote_directory() {
  if [[ ! -z "$2" ]]; then
    remote_directory=$(_expand_relative_path $2)
    [[ "$remote_directory" =~ ^"$HOME"(/|$) ]] && remote_directory="~${remote_directory#$HOME}"
    echo "Changing remote dir to: '$remote_directory'"
  fi
  echo "SSH to '$1'"
  ssh "$1" -t "cd $remote_directory; \$SHELL -l"
}