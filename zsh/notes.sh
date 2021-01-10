# Core notes directories & files
export NOTES_EDITOR="code" 
export NOTES_DIR="${HOME}/Notes"
export JOURNAL_FILE="${NOTES_DIR}/journal.txt"

function _open_editor_at_line(){
  local editor=$1
  local file=$2
  local line=$3

  if [ $editor = "code" ]; then
     code --g "$file:$line"
  elif [ $editor = "vim" ]; then 
      vim "+$line" "$file"
  elif [ $editor = "emacs" ]; then
      emacs "+$line" "$file"
  elif [ $editor = "emacsnw" ]; then
      emacs -nw "+$line" "$file"
  else
    $editor $file
  fi 
}

function _get_today_section_in_journal() {
  local yesterday="$(grep `gdate --date='-1 day' +'%Y/%m/%d'` $JOURNAL_FILE --line-number | cut -f1 -d ':')"
  if [ -n "$yesterday" ]; then
    echo "$(expr $yesterday - 2)"
    exit
  fi

  local latest="$(grep '## .*[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9]' $JOURNAL_FILE --line-number | head -n1 | cut -f1 -d ':')"
  if [ -n "$latest" ]; then
    echo "$(expr $latest - 2)"
    exit
  fi

  echo "0"
}

function _open_journal_at_todays_section() {
  _open_editor_at_line $NOTES_EDITOR $JOURNAL_FILE "$(_get_today_section_in_journal)"
}

function _fzfgrep_to_journal() { 
  line="$(fzfgrep "$1" $JOURNAL_FILE)"
  file="$( echo $line | cut -f1 -d ':')"
  line_num="$( echo $line | cut -f2 -d ':')"
  _open_editor_at_line $NOTES_EDITOR $file $line_num
}

alias j="_open_journal_at_todays_section"
alias ej="NOTES_EDITOR=emacs _open_journal_at_todays_section"
alias vj="NOTES_EDITOR=vim _open_journal_at_todays_section"

alias jz="EDITOR=$NOTES_EDITOR _fzfgrep_to_journal"
alias vjz="EDITOR=vim _fzfgrep_to_journal"
