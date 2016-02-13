RSpec.describe LocomotiveCMS::Liquids::Filters::Helpers do
  include LocomotiveCMS::Liquids::Filters::Helpers

  describe '#url_for' do
    it 'removes the trailing slash' do
      expect(url_for('http://foo.com/bar/')).to eql 'http://foo.com/bar'

      expect(url_for('http://foo.com/bar')).to eql 'http://foo.com/bar'
    end
  end
end