require 'solid'

shared_examples :solid_element do
  describe '.tag_name' do
    it 'register tag with given name' do
      expect(Liquid::Template).to receive(:register_tag).with('dummy', described_class)

      described_class.tag_name 'dummy'
    end

    it 'return the previously given name' do
      allow(Liquid::Template).to receive(:register_tag)

      described_class.tag_name 'dummy'

      expect(described_class.tag_name).to eq('dummy')
    end
  end

  describe '.context_attribute' do
    let(:element) do
      described_class.context_attribute :current_user

      allow(Solid::Arguments).to receive(:parse).with('ARGUMENTS')

      element = described_class.new 'name', 'ARGUMENTS', ['{% endname %}']
    end

    it 'define a custom accessor to the rendered context' do
      allow(element).to receive(:current_context).and_return({'current_user' => 'me'})

      expect(element.current_user).to eq('me')
    end

    it 'raise a `Solid::ContextError` exception if called outside render' do
      expect { element.current_user }.to raise_error(Solid::ContextError)
    end
  end

  describe '#arguments' do
    it 'creates a `Solid::Arguments` instance with the given arguments' do
      allow(Solid::Arguments).to receive(:parse).with('ARGUMENTS')

      described_class.new 'name', 'ARGUMENTS', ['{% endname %}']
    end

    it 'stores the given arguments' do
      element = described_class.new 'name', '1', ['{% endname %}']

      expect(element.arguments).to be_a(Solid::Arguments)
    end
  end

  describe '#display' do
    it 'forces developer to define it in child class' do
      allow(Solid::Arguments).to receive(:parse).with('ARGUMENTS')

      element = described_class.new 'name', 'ARGUMENTS', ['{% endname %}']

      expect{ element.display }.to raise_error(NotImplementedError)
    end
  end
end