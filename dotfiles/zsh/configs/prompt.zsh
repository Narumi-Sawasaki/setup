autoload colors
colors

PROMPT="
%{$fg[green]%}[%n:%~]
[%c]
%# "

#%{$fg[green]%}[%n@%m]%{$reset_color%} 
PROMPT2="%{$fg[green]%}%_>%{$reset_color%}"
SPROMPT="%{$fg[red]%}correct: %R -> %r [nyae]? %{$reset_color%}"
RPROMPT="%{$fg[cyan]%}%{$reset_color%}"
export LSCOLORS=gxfxcxdxbxegedabagacag
export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;46'

# gitの情報を表示する設定
# http://tkengo.github.io/blog/2013/05/12/zsh-vcs-info/
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'
