#!/bin/bash

# Tested on Ubuntu 16.04

sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev 
sudo apt-get install libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev 
sudo apt-get install libcurl4-openssl-dev python-software-properties libffi-dev nodejs
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL
rbenv install 2.4.0
rbenv global 2.4.0
ruby -v
gem install bundler
gem install jekyll --no-rdoc --no-ri
gem install github-pages --no-rdoc --no-ri
gem install redcarpet
gem install jekyll-last-modified-at
gem install bundler
gem install jekyll-paginate
gem install sass
gem install html-proofer