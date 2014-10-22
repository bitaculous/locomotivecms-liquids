module Liquids
  module Filters
    module Text
      def handleize(input, separator = '-')
        input.to_str.gsub(/[ \_\-\/]/, separator).downcase
      end
    end
  end
end