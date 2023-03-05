zstyle ':completion:*:default' menu select=1

# emacsモードを有効にする
# これはtmuxでCtr-aとCtr-eを有効にする為の設定
bindkey -e

# その他設定
source "$HOME/.sdkman/bin/sdkman-init.sh"
DIRSTACKSIZE=100
setopt transient_rprompt
setopt AUTO_PUSHD
setopt share_history
setopt AUTO_CD
unsetopt CORRECT
setopt CDABLE_VARS
DISABLE_AUTO_TITLE="true"
