module LocomotiveCMS
  module Liquids
    module Filters
      module Math # :nodoc:
        def mod(input, modulus)
          input.to_i % modulus.to_i
        end
      end
    end
  end
end