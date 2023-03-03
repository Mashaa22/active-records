ENV['RACK_ENV'] ||= "development"

# Require in Gems
require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])

desc 'open console'
task :console do
    Pry.start
end

require 'active_record'
# Require in all files in 'app' directory
require_all 'app'

