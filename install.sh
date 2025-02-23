# brewのインストール
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install ghq
brew install rbenv

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

ghq get git@github.com:Narumi-Sawasaki/setup.git

rbenv install 3.2.2
rbenv global 3.2.2

ruby deploy.rb
brew bundle  install --file=~/.Brewfile

npm install -g commitizen
