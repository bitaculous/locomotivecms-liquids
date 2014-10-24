#!/usr/bin/env guard

group :spec do
  guard :rspec, cmd: 'rspec', failed_mode: :focus, all_after_pass: true, all_on_start: true, notification: true do
    watch(%r{^spec/.+_spec\.rb$})

    watch(%r{^lib/(.+)\.rb$})    { |m| "spec/lib/#{m[1]}_spec.rb" }

    watch('spec/spec_helper.rb') { 'spec' }
  end
end