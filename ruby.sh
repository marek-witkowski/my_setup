#!/usr/bin/env bash

# Install RVM

gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable

source $PWD/.rvm/scripts/rvm

rvm install 3.2.0

rvm docs generate-ri

# Ruby on Rails 

gem install bundler brakeman  rails rails_best_practices rubocop rubocop-rails rubocop-performance rubocop-rspec annotate hotwire-livereload

# Jekyll

gem install jekyll jekyll-sitemap jekyll-paginate-v2

# Sinatra

gem install sinatra
