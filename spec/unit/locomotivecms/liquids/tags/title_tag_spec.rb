RSpec.describe LocomotiveCMS::Liquids::Tags::TitleTag do
  # it_behaves_like :solid_element

  let(:source)         { '{% title %}' }
  let(:site_name)      { 'Acme' }
  let(:site_seo_title) { 'Acme (SEO)' }
  let(:site)           { liquid_instance_double 'Site', name: site_name, seo_title: site_seo_title }
  let(:page_name)      { 'Page' }
  let(:page_seo_title) { 'Page (SEO)' }
  let(:page_handle)    { 'handle' }
  let(:page)           { liquid_instance_double 'Page', name: page_name, seo_title: page_seo_title, handle: page_handle }
  let(:assigns)        { { 'site' => site, 'page' => page } }
  let(:context)        { Liquid::Context.new(assigns, {}, {}) }

  subject { render_template(source, context).strip }

  describe '#display' do
    it { should eq "<title>#{page.seo_title} | #{site.name}</title>" }

    context 'page is the index page or has `index` as handle' do
      let(:page_handle) { 'index' }

      it { should eq "<title>#{site.name} | #{page.seo_title}</title>" }
    end

    context 'the title is specified' do
      let(:title)  { 'Title' }
      let(:source) { "{% title { title: '#{title}' } %}" }

      it { should eq "<title>#{title} | #{site.name}</title>" }
    end

    context 'the name is specified' do
      let(:name)   { 'Name' }
      let(:source) { "{% title { name: '#{name}' } %}" }

      it { should eq "<title>#{page.seo_title} | #{name}</title>" }
    end

    context 'the divider is specified' do
      let(:divider) { '-' }
      let(:source)  { "{% title { divider: '#{divider}' } %}" }

      it { should eq "<title>#{page.seo_title} #{divider} #{site.name}</title>" }
    end
  end
end