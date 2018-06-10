#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install ruby openssh-server

sudo gem install src/bundler-1.16.2.gem
sudo gem install src/rake-12.3.1.gem

bundle install --local

if [ ! -e ~/Dev/staging.rb ]; then
	cp src/staging.rb ~/Dev
fi

if [ ! -e ~/Dev/production.rb ]; then
	cp src/production.rb ~/Dev
fi

cd ~/Dev

if [ ! -d spaceman ]; then
  git clone https://github.com/turgu1/spaceman.git
fi

if [ ! -d sciencia ]; then
  git clone https://github.com/turgu1/sciencia.git
fi

