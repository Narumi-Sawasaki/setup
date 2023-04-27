# brewのインストール
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle install --file=dotfiles/Brewfile

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
# git clone https://github.com/nodenv/nodenv.git ~/.nodenv

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# ghqの設定が必要な気がする
ghq get https://github.com/Narumi-Sawasaki/setup.git
GHQ_PATH=$(ghq root)
DOTFILES_PATH="$GHQ_PATH/github.com/Narumi-Sawasaki/setup/dotfiles"
env RCRC=$DOTFILES_PATH/rcrc rcup
