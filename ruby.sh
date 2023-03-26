#!/usr/bin/env bash

# Install RVM

gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable

source $PWD/.rvm/scripts/rvm

rvm install 3.2.0

rvm docs generate-ri

gem install bundler brakeman jekyll rails rails_best_practices rubocop rubocop-rails rubocop-performance rubocop-rspec annotate hotwire-livereload
