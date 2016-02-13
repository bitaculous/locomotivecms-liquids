root = File.expand_path '../../', __FILE__

# Require the test object.
require 'locomotivecms/liquids'

# Require the spec helper.
require 'spec_helper'

# Add additional requires below this line.

# Requires supporting Ruby files with custom matchers, macros, etc. in `spec/support` and its subdirectories. Files
# matching `spec/**/*_spec.rb` are run as spec files by default. This means that files in `spec/support` that end in
# `_spec.rb` will both be required and run as specs, causing the specs to be run twice. It is recommended that you do
# not name files matching this glob to end with `_spec.rb`. You can configure this pattern with the `--pattern` option
# on the command line or in `~/.rspec`, `.rspec` or `.rspec-local`.

# The following line is provided for convenience purposes. It has the downside of increasing the boot-up time by
# auto-requiring all files in the `support` directory. Alternatively, in the individual `*_spec.rb` files, manually
# require only the support files necessary.
support = File.expand_path 'spec/support', root

Dir["#{support}/**/*.rb"].each { |file| require file }

# Requires shared Ruby files with shared examples, matchers, etc. in `spec/shared` and its subdirectories.
shared = File.expand_path 'spec/shared', root

Dir["#{shared}/**/*.rb"].each { |file| require file }