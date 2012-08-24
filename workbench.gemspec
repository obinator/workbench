# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'workbench/version'

Gem::Specification.new do |s|
  s.name = 'workbench'
  s.summary = 'Example of messaging API'
  s.version = Workbench::VERSION
  s.require_paths = ["lib"]
  s.files = Dir.glob("{lib}/**/*")
  s.add_development_dependency "activesupport"
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = ">= 1.9.2"
end
