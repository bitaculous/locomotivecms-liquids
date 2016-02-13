def render_template(source, context = nil, options = {})
  context ||= ::Liquid::Context.new
  context.exception_handler = ->(exception) { true }

  Liquid::Template.parse(source, options).render context
end

def liquid_instance_double(doubled_class, stubs)
  instance_double(doubled_class, stubs).tap do |double|
    allow(double).to receive(:to_liquid).and_return(double)
  end
end