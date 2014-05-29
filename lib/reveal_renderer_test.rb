require 'minitest/autorun'
require_relative './reveal_renderer'

describe RevealRenderer do

  let(:markdown_source) { "# Slide 1\n\n---\n\n# Slide 2" }
  subject { RevealRenderer.new(markdown_source) }

  it 'has the source' do
    subject.source.must_equal markdown_source
  end

  it 'splits up slides' do
    subject.markdown_slides.length.must_equal 2
  end

  it 'renders a slide' do
    result = <<-END
    <section data-markdown>
        <script type="text/template">
            # Slide 1
        </script>
    </section>
    END

    subject.render_slide("# Slide 1\n").must_equal result
  end

  it 'renders all slides' do
    result = <<-END
    <section data-markdown>
        <script type="text/template">
            # Slide 1
        </script>
    </section>

    <section data-markdown>
        <script type="text/template">
            # Slide 2
        </script>
    </section>
    END
    subject.render.must_equal result
  end
end
