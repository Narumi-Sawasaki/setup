if ! [ -f /tmp/rbenv.cache ]
then
  rbenv init - --no-rehash > /tmp/rbenv.cache
  zcompile /tmp/rbenv.cache
fi
source /tmp/rbenv.cache

if ! [ -f /tmp/nodenv.cache ]
then
  nodenv init - > /tmp/nodenv.cache
  zcompile /tmp/nodenv.cache
fi
source /tmp/nodenv.cache
