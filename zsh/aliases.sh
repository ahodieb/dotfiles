# Application Aliases
alias fork="open -a /Applications/Fork.app ."
alias epoch="date +%s"
alias zshconfig="sublime ~/.zshrc"
alias fmt_num="xargs printf \"%0'd\n\""
alias ppull="ls | parallel 'echo -n \"\033[1m{}\033[0m: \" && git -C {} pull --rebase --autostash --log'"

alias vvimrc="vim ~/.vim/vimrc"
# From: https://ahmadawais.com/show-emoji-git-log/
alias lg="git log --abbrev-commit --decorate --date=relative --format=format:'%C(red)%h%C(r) —— %C(bold blue)%an%C(r): %C(white)%s%C(r) %C(dim white) %C(bold green)(%ar)%C(r) %C(bold yellow)%d%C(r)' --all"

alias fzvim="fzf | xargs -o vim"
