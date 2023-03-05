# Anything系のツールで絞り込んだ結果を利用するフレームワーク
autoload -Uz anyframe-init
zstyle ":anyframe:selector:" use fzf
bindkey '^n' anyframe-widget-execute-history 
