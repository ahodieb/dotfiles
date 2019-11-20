# Get absolute path, mainly used to expand . in path
get_absolute_path() {
  if [[ -d "$1" ]]; then
    cur_dir=$(pwd)
    cd "$1" >/dev/null
    pwd
    cd "$cur_dir" >/dev/null
  fi
}

ssh_to_remote_directory() {
  if [[ ! -z "$2" ]]; then
    remote_directory=$(get_absolute_path $2)
    [[ "$remote_directory" =~ ^"$HOME"(/|$) ]] && remote_directory="~${remote_directory#$HOME}"
    echo "Changing remote dir to: '$remote_directory'"
  fi
  echo "SSH to '$1'"
  ssh "$1" -t "cd $remote_directory; \$SHELL -l"
}

loading_sequence() {
  local repeating_char=${1}
  local repeating_char_len=${#repeating_char}

  while :; do
    for i in {0..3}; do
      echo -n "${repeating_char}"
      sleep 0.3
    done
    for i in {0..3}; do
      for i in {0..${repeating_char_len}}; do
        echo -en "\010"
        echo -n " "
        echo -en "\010"
      done
      sleep 0.1
    done
  done
}

mpull() {
  for repo in $(ls $@); do
    git -C "$repo" pull --rebase --auto-stash --log &
  done
}
