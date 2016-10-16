#!/usr/bin/env bash

# Prefix `bundle` with `exec` so unicorn shuts down gracefully on SIGTERM (i.e. `docker stop`)
exec bundle exec unicorn -c /var/www/fancybite_menu_api/config/containers/unicorn.rb -E $RAILS_ENV;
