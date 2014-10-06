module Liquids
  module Filters
    module Text
      def handleize(input)
        input.to_str.downcase.gsub(' ', '-').gsub '/', '-'
      end
    end
  end
end