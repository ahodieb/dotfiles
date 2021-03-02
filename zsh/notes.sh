### Setup papyrus ###
export PAPYRUS_HOME=$HOME/PersonalDev/papyrus
if [ -d "$PAPYRUS_HOME" ]; then
  export PATH=$PATH:$PAPYRUS_HOME
fi
### -------------------------- ###

# Core notes directories & files
export NOTES_EDITOR="code" 
export NOTES_DIR="${HOME}/Notes"
export JOURNAL_FILE="${NOTES_DIR}/journal.txt"
alias j="papyrus open"
alias vj="NOTES_EDITOR=vim papyrus open"