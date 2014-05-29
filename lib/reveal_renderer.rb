class RevealRenderer
  attr_reader :source

  def initialize(markdown)
    @source = markdown
  end

  def render
    markdown_slides.map { |slide| render_slide(slide) }.join("\n")
  end

  def markdown_slides
    source.split('---')
  end

  def render_slide(markdown)
    slide = <<-END
    <section data-markdown>
        <script type="text/template">
            #{markdown.strip}
        </script>
    </section>
    END
  end
end
