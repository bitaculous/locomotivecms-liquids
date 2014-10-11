#!/usr/bin/env gem build

lib = File.expand_path '../lib', __FILE__
$:.unshift lib unless $:.include? lib

require 'liquids/version'

Gem::Specification.new do |spec|
  spec.name        = 'liquids'
  spec.summary     = 'A package of misc Liquid blocks, tags and filters for LocomotiveCMS Wagon and Engine.'
  spec.author      = 'Maik Kempe'
  spec.email       = 'mkempe@bitaculous.com'
  spec.homepage    = 'http://bitaculous.github.io/liquids'
  spec.version     = Liquids::VERSION
  spec.platform    = Gem::Platform::RUBY
  spec.license     = 'MIT'

  spec.files       = `git ls-files`.split($\)
  spec.executables = spec.files.grep(/^bin/).map { |file| File.basename file }
  spec.test_files  = spec.files.grep(/^(features|spec|test)/)

  spec.required_ruby_version = '~> 2.1'

  spec.required_rubygems_version = '~> 2.4'

  spec.add_dependency 'locomotivecms-solid', '~> 0.2.2.1'

  spec.add_development_dependency 'bundler', '~> 1.7.3'

  spec.add_development_dependency 'rake', '~> 10.3.2'

  spec.add_development_dependency 'rspec', '~> 3.1.0'
end