alias ls="ls -GF"

alias repos="ghq list -p | fzf"
# $(repos)や``とかだとzshrcを読み込んだ時に評価されてしまうので、``をエスケープしている
alias r="cd \`repos\`"
# ファイル名が今日の日付のmdファイル作成
alias tmd="touch $(date '+%Y-%m-%d').md" 
alias files_in_current_dir="ls -a | fzf"
alias files_in_current_dir_recur="find . | grep -v 'git' | grep -v '^\.$' |  fzf"
alias -g today="date '+%Y/%m/%d' | tr -d '\n' | tee >(pbcopy)"
alias -g now="date '+%H:%M' | tr -d '\n' | tee >(pbcopy)"
alias v=nvim

alias ic="cd ~/Library/Mobile\ Documents/com\~apple\~CloudDocs"

alias tf="terraform"

alias t="todo.sh"
alias tl="todo.sh ls | sort"
alias ts="todo.sh ls | sort"
alias ta="todo.sh add"
alias td="todo.sh del"
alias tn="todo.sh done"

# k8s
alias ktl="kubectl"
