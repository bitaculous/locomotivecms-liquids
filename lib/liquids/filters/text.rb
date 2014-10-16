module Liquids
  module Filters
    module Text
      def handleize(input)
        input.to_str.gsub(' ', '-').gsub('_', '-').gsub('/', '-').downcase
      end
    end
  end
end