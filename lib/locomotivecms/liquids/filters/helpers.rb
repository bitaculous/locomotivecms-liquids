module LocomotiveCMS
  module Liquids
    module Filters
      module Helpers # :nodoc:
        def url_for(url)
          url.chomp '/'
        end
      end
    end
  end
end