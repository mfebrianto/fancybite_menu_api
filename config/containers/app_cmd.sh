#!/usr/bin/env bash

# hacky, but force clean up after previous runs
rm -rf tmp/pids/server.pid

# updated bundler
gem install bundler

bundle check || bundle install

# prepare DB
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed

# Prefix `bundle` with `exec` so unicorn shuts down gracefully on SIGTERM (i.e. `docker stop`)
exec bundle exec unicorn -c /var/www/fb_menu_api/config/containers/unicorn.rb -E $RAILS_ENV;
