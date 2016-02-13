RSpec.describe LocomotiveCMS::Liquids::Filters::Text do
  include LocomotiveCMS::Liquids::Filters::Text

  describe '#handleize' do
    it 'returns the correct handle' do
      expect(handleize('foo')).to eql 'foo'

      expect(handleize('Foo')).to eql 'foo'

      expect(handleize('Foo Bar')).to eql 'foo-bar'

      expect(handleize('Foo_Bar')).to eql 'foo-bar'

      expect(handleize('Foo-Bar')).to eql 'foo-bar'
    end

    context 'the separator is specified' do
      let(:separator) { '_' }

      it 'returns the correct handle' do
        expect(handleize('Foo Bar', separator)).to eql "foo#{separator}bar"

        expect(handleize('Foo_Bar', separator)).to eql "foo#{separator}bar"

        expect(handleize('Foo-Bar', separator)).to eql "foo#{separator}bar"
      end
    end
  end
end