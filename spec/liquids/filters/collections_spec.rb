require 'spec_helper'

describe Liquids::Filters::Collections do
  include Liquids::Filters::Collections

  describe '#sample' do
    let(:array) { ['Foo', 'Bar', 'Foobar'] }

    it 'returns a random element of an array' do
      sample = sample array

      expect(sample).to be_a String

      expect(array).to include sample
    end

    it 'return the number of random elements of an array' do
      sample = sample array, 2

      expect(sample.size).to eql 2

      expect(sample.first).not_to eql sample.last

      expect(array).to include sample.first

      expect(array).to include sample.last
    end
  end
end