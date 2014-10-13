require 'ostruct'

class CustomModel < OpenStruct
  def attributes=(attributes)
    attributes.each do |key, value|
      send(:"#{key}=", value)
    end
  end

  def to_liquid
    CustomDrop.new self
  end
end