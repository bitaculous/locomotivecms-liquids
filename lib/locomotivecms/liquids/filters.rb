require_relative 'filters/collections'
Liquid::Template.register_filter LocomotiveCMS::Liquids::Filters::Collections

require_relative 'filters/helpers'
Liquid::Template.register_filter LocomotiveCMS::Liquids::Filters::Helpers

require_relative 'filters/math'
Liquid::Template.register_filter LocomotiveCMS::Liquids::Filters::Math

require_relative 'filters/text'
Liquid::Template.register_filter LocomotiveCMS::Liquids::Filters::Text