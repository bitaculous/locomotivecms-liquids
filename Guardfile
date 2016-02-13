#!/usr/bin/env guard

group :spec do
  guard :rspec, cmd: 'rspec', failed_mode: :focus, all_after_pass: true, all_on_start: true, notification: true do
    # Specifications
    watch(%r{^spec/.+_spec\.rb$})

    # Library
    watch(%r{^lib/(.+)\.rb$})                     { |m| "spec/lib/#{m[1]}_spec.rb" }

    # Shared examples
    watch(%r{^spec/shared/(.+)\.rb$})             { 'spec' }

    # Supporting Ruby files with custom matchers, macros, etc.
    watch(%r{^spec/support/(.+)\.rb$})            { 'spec' }

    # Spec helpers
    watch('spec/bitcoveries_materials_helper.rb') { 'spec' }
    watch('spec/spec_helper.rb')                  { 'spec' }
  end
end