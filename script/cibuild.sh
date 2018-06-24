#!/usr/bin/env bash
set -e # halt script on error

export JEKYLL_ENV=production
export NOKOGIRI_USE_SYSTEM_LIBRARIES=true

bundle exec jekyll build
bundle exec htmlproofer --disable-external --allow-hash-href --url-ignore "/#/" ./_site