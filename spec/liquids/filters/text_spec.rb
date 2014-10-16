require 'spec_helper'

describe Liquids::Filters::Text do
  include Liquids::Filters::Text

  describe '#handleize' do
    it 'returns the correct handle' do
      expect(handleize('foo')).to eql 'foo'

      expect(handleize('Foo')).to eql 'foo'

      expect(handleize('Foo_Bar')).to eql 'foo-bar'

      expect(handleize('Foo Bar')).to eql 'foo-bar'
    end
  end
end