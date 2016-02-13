#!/usr/bin/env gem build

require_relative 'lib/locomotivecms/liquids/version'

Gem::Specification.new 'locomotivecms-liquids', LocomotiveCMS::Liquids::VERSION do |spec|
  spec.summary          = 'A package of misc Liquid blocks, tags and filters for LocomotiveCMS Engine and Wagon.'
  spec.author           = 'Maik Kempe'
  spec.email            = 'mkempe@bitaculous.com'
  spec.homepage         = 'https://bitaculous.github.io/locomotivecms-liquids/'
  spec.license          = 'MIT'
  spec.files            = Dir['{lib}/**/*', 'LICENSE', 'README.md']
  spec.extra_rdoc_files = ['LICENSE', 'README.md']

  spec.required_ruby_version     = '~> 2.1'
  spec.required_rubygems_version = '~> 2.4'

  spec.add_runtime_dependency 'locomotivecms-solid', '>= 0.2.2.1'

  spec.add_development_dependency 'rake',  '~> 10.5', '>= 10.5.0'
  spec.add_development_dependency 'rspec', '~> 3.4',  '>= 3.4.0'
end