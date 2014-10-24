module Liquids
  module Filters
    module Helpers
      def url_for(url)
        url.chomp '/'
      end
    end
  end
end