#!/bin/bash

set -e

if [[ $BUNDLED_RUBOCOP ]]; then
  echo "Attempting to use bundled rubocop"
  bundle config path vendor/bundle
  bundle install --jobs 4 --retry 3
else
  echo "Installing the latest rubocop without bundler"
  gem install rubocop
fi

ruby /action/lib/index.rb
