module Liquids
  module Filters
    module Text
      def handleize(input)
        input.to_str.gsub('_', '-').gsub(' ', '-').gsub('/', '-').downcase
      end
    end
  end
end