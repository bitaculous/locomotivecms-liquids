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

    context 'page has `index` as handle' do
      let(:page) { CustomModel.new(title: 'Page Title', seo_title: 'Page SEO Title', handle: 'index') }

      it 'renders title tag' do
        expect(subject.render(context)).to eq("<title>#{site[:name]} | #{page[:seo_title]}</title>")
      end
    end

    context 'separator is specified' do
      let(:separator) { '-' }
      let(:options)   { "separator: '#{separator}'" }

      it 'renders title tag' do
        expect(subject.render(context)).to eq("<title>#{page[:seo_title]} #{separator} #{site[:name]}</title>")
      end
    end
  end
end