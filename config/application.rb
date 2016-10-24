# require File.expand_path('../master-lock/app/master-lock')
# require File.expand_path('../master-lock/config/boot')
# require File.expand_path('../master-lock/app/api/root')

#These are from the example
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'app', 'api'))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'app'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'boot'
require 'master-lock'

Bundler.require :default, ENV['RACK_ENV']

include_dirs = %w(models)

include_dirs.each do |dir|
  Dir[File.expand_path(File.join('../../app', dir, '*.rb'), __FILE__)].each do |f|
    require f
  end
end
