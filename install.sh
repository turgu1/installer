#!/bin/bash

sudo apt update
sudo apt upgrade

sudo apt install ruby pgadmin3 openssh-server

sudo gem install src/bundler-1.16.2.gem
sudo gem install src/rake-12.3.1.gem

bundle install --local

mkdir -p ~/Dev
cd ~/Dev

git clone https://github.com/turgu1/spaceman.git
git clone https://github.com/turgu1/sciencia.git
