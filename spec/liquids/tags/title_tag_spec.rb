require 'spec_helper'

describe Liquids::Tags::TitleTag do
  # it_behaves_like :solid_element

  let(:tag_name) { 'title' }
  let(:options)  { 'foo: "bar", bar: "foo"' }
  let(:tokens)   { ['{{site.name}}', '{{page.title}}'] }
  let(:context)  { Liquid::Context.new({}, assigns, { logger: CustomLogger }) }

  subject { Liquids::Tags::TitleTag.new(tag_name, options, tokens) }

  describe '#display' do
    let(:site)    { CustomModel.new(name: 'Site Name', seo_title: 'Site SEO Title') }
    let(:page)    { CustomModel.new(title: 'Page Title', seo_title: 'Page SEO Title') }
    let(:assigns) { { 'site' => site, 'page' => page, 'wagon' => true } }

    it 'renders title tag' do
      expect(subject.render(context)).to eq("<title>#{page[:seo_title]} | #{site[:name]}</title>")
    end
  end
end