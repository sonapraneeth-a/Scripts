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
dos2unix ~/.rbenv/libexec/*
dos2unix ~/.rbenv/completions/*
source .bashrc
exec $SHELL
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
dos2unix ~/.rbenv/plugins/ruby-build/*
dos2unix ~/.rbenv/plugins/ruby-build/bin/*
dos2unix ~/.rbenv/plugins/ruby-build/bin/ruby-build
source .bashrc
exec $SHELL
rbenv install --verbose 2.6.0
rbenv global 2.6.0

# https://medium.com/finc-engineering/setup-windows-10-to-run-ruby-on-rails-using-the-new-improved-wsl-c6894d1ae2ae
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
gpg2 --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
rvm install 2.6.0
rvm install --verbose 2.5.3

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