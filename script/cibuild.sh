#!/usr/bin/env bash
set -e # halt script on error

bundle exec jekyll build
bundle exec htmlproofer --url-ignore "/thomascoats.com/,/dotdev.io/,/seofriendlysinglepageapp.azurewebsites.net/" ./_site