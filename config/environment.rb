ENV['RACK_ENV'] ||= "development"

# Require in Gems
require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])

require 'active_record'
# Require in all files in 'app' directory
require_all 'app'

