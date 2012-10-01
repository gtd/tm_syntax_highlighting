Gem::Specification.new do |s|
  s.name = 'dasil003-tm_syntax_highlighting'
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Arya Asemanfar", "Gabe da Silveira"]
  s.date = '2012-10-01'
  s.summary = 'Code highlighting for ActionView 3'
  s.description = 'Uses the Ultraviolet gem to highlight any language that TextMate can highlight, and has a (Thor) generator to generate the relevant CSS files.'
  s.email = 'gabe@websaviour.com'
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
     "MIT-LICENSE",
     "README.md",
     "Rakefile",
     "lib/generators/USAGE",
     "lib/generators/syntax_css_generator.rb",
     "lib/tm_syntax_highlighting.rb",
     "lib/tm_syntax_highlighting/base.rb",
     "tm_syntax_highlighting.gemspec",
     "uninstall.rb"
  ]
  s.homepage = 'http://github.com/gtd/tm_syntax_highlighting'
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}

  s.add_dependency(%q<ultraviolet>, [">= 0"])
end
