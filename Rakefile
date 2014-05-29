require 'rake/clean'
require './lib/reveal_renderer'

desc 'Render your slides.md into index.html'
task :render => 'reveal.js/index.html'
file 'reveal.js/index.html' => 'slides.md' do
  markdown = File.read('slides.md')
  reveal   = RevealRenderer.new(markdown).render
  template = File.read('reveal.js/index.html.template')
  result   = template.sub('{{slides}}', reveal)
  File.open('reveal.js/index.html', 'w') { |file| file.write(result) }
end
CLEAN.include('reveal.js/index.html')

desc 'Render and open your slides in a browser'
task :slides => 'reveal.js/index.html' do
  sh 'open reveal.js/index.html'
end

task :default => :slides


