source ~/.zplug/init.zsh
zplug "mollifier/anyframe", at:4c23cb60

if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi
zplug load > /dev/null

# これいるのか？
# path=($HOME/zplug(N-/) $path)
