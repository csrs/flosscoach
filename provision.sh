#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y nodejs nodejs-legacy postgresql-common postgresql-9.5
sudo apt-get install -y git curl automake build-essential bison
sudo apt-get install -y libpq-dev libssl-dev libtool libcurl4-openssl-dev
sudo apt-get install -y libyaml-dev libreadline-dev libxml2-dev libxslt1-dev
sudo apt-get install -y libffi-dev libffi-dev libgdbm-dev libncurses5-dev
sudo apt-get install -y libsqlite3-dev sqlite3 zlib1g-dev
sudo apt-get install -y python-software-properties
rvm default ruby-2.3.1
gem install bundler
gem install nokogiri -v '1.6.8'
gem install rails
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get update
cd /vagrant/
bundle install
