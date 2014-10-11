module Liquids
  module Tags
    class TitleTag < Solid::Tag
      # Register tag with name `title`
      tag_name :title

      context_attribute :wagon

      def display
        'Title'
      end
    end
  end
end