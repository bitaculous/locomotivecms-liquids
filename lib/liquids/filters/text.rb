module Liquids
  module Filters
    module Text
      def handleize(input)
        input.to_str.gsub(' ', '-').gsub('/', '-').downcase
      end
    end
  end
end