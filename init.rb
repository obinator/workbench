puts "Ruby Version: #{RUBY_VERSION} #{RUBY_PATCHLEVEL} #{RUBY_PLATFORM} (#{`which ruby`.strip})"

require 'bundler'
Bundler.setup

lib_dir = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift lib_dir unless $LOAD_PATH.include?(lib_dir)

require 'workbench'
