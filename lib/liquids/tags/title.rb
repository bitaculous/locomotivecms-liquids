module Liquids
  module Tags
    class Title < Solid::Tag
      # Register tag under the name of `title`
      tag_name :title

      context_attribute :wagon

      def display
        'Title'
      end
    end
  end
end