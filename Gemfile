#!/usr/bin/env bundle

source 'https://rubygems.org'

gemspec # Include gemspec dependencies

group :development do
  gem 'guard-rspec', '~> 4.3.1', require: false
end

group :misc do
  gem 'growl', '~> 1.0.3', require: RUBY_PLATFORM.include?('darwin') && 'growl'

  gem 'rb-fsevent', '~> 0.9.4', require: RUBY_PLATFORM.include?('darwin') && 'rb-fsevent'
end