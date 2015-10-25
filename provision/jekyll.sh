#!/usr/bin/env bash

source ~/.rvm/scripts/rvm
rvm use default@vagrant

sudo apt-get -y install libgmp3-dev

gem install bundler

cd /vagrant

echo 'source "https://rubygems.org"'      >> Gemfile

echo "gem 'fast-stemmer', '~> 1.0.2'"     >> Gemfile
echo "gem 'therubyracer', '~> 0.12.2'"    >> Gemfile
echo "gem 'libv8',        '~> 3.16.14.0'" >> Gemfile
echo "gem 'jekyll',       '~> 2.5.3'"     >> Gemfile

bundle install
