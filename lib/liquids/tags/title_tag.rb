require 'liquids/filters/text'

module Liquids
  module Tags
    class TitleTag < Solid::Tag
      include Filters::Text

      # Register tag with name `title`
      tag_name :title

      # Context attributes
      context_attribute :site
      context_attribute :page

      def display(options = {})
        name      = options[:name] || site[:name]
        title     = options[:title] || page[:seo_title] || page[:title]
        separator = options[:separator] || '|'
        handle    = handleize page[:handle] || 'handle'
        index     = handle == 'index'

        if index
          "<title>#{name} #{separator} #{title}</title>"
        else
          "<title>#{title} #{separator} #{name}</title>"
        end
      end
    end
  end
end