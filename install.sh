# 方針を決める
# * privateな情報は含めない
# 	* セキュリティ的にもコンプラ的にも危ない
# * ghqは利用する
# 	* 公開リポジトリだからgitの設定はいらない

# brewのインストール
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install zsh
brew install rbenv
brew install nodenv
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
# git clone https://github.com/nodenv/nodenv.git ~/.nodenv

brew install ghq
brew install fzf
brew install rcrc

# ghqの設定が必要な気がする
ghq get https://github.com/Narumi-Sawasaki/setup.git
GHQ_PATH=$(git config -l | grep ghq.root | cut -d "=" -f 2)
DOTFILES_PATH="$GHQ_PATH/src/github.com/Narumi-Sawasaki/setup/dotfiles"
RCRC=$DOTFILES_PATH/rcrc rcup
