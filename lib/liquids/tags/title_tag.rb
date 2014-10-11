module Liquids
  module Tags
    class TitleTag < Solid::Tag
      # Register tag with name `title`
      tag_name :title

      context_attribute :site
      context_attribute :page
      context_attribute :wagon

      def display(*options)
        name   = site['name'] || site.name
        title  = page.seo_title || page.title
        handle = self.handleize page.handle || 'handle'

        if handle == 'index'
          "<title>#{name} | #{title}</title>"
        else
          "<title>#{title} | #{name}</title>"
        end
      end

      protected

      def handleize(input)
        input.to_str.gsub(' ', '-').gsub('/', '-').downcase
      end
    end
  end
end