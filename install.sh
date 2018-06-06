#!/bin/bash

sudo apt update
sudo apt upgrade

sudo apt install ruby pgadmin3 openssh-server

sudo gem install src/bundler-1.16.2.gem
sudo gem install src/rake-12.3.1.gem

bundle install --local --path vendor/bundle

mkdir -p ~/Dev
cd ~/Dev

if [ ! -e staging.rb ]; then
	cp src/staging.rb .
fi

if [ ! -e production.rb ]; then
	cp src/production.rb .
fi

if [ ! -d spaceman ]; then
  git clone https://github.com/turgu1/spaceman.git
fi

if [ ! -d sciencia ]; then
  git clone https://github.com/turgu1/sciencia.git
fi

