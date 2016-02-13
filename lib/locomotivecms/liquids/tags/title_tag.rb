module LocomotiveCMS
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
          name    = options[:name] || site.name
          title   = options[:title] || page.seo_title || page.title
          divider = options[:divider] || '|'
          handle  = handleize page.handle || 'handle'
          index   = handle == 'index'

          if index
            "<title>#{name} #{divider} #{title}</title>"
          else
            "<title>#{title} #{divider} #{name}</title>"
          end
        end
      end
    end
  end
end