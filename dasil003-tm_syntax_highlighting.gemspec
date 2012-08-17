# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dasil003-tm_syntax_highlighting}
  s.version = "1.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Arya Asemanfar", "Gabe da Silveira"]
  s.date = %q{2010-11-17}
  s.description = %q{Uses the spox-ultraviolet gem to highlight any language that TextMate can highlight, and has a (Thor) generator to generate the relevant CSS files.}
  s.email = %q{gabe@websaviour.com}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "MIT-LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "dasil003-tm_syntax_highlighting.gemspec",
    "lib/generators/USAGE",
    "lib/generators/syntax_css_generator.rb",
    "lib/tm_syntax_highlighting.rb",
    "lib/tm_syntax_highlighting/base.rb",
    "test/tm_syntax_highlighting_test.rb",
    "tm_syntax_highlighting.gemspec"
  ]
  s.homepage = %q{http://github.com/dasil003/tm_syntax_highlighting}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Ruby 1.9.2 / Rails 3 plugin to highlight code}
  s.test_files = [
    "test/tm_syntax_highlighting_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spox-ultraviolet>, [">= 0"])
    else
      s.add_dependency(%q<spox-ultraviolet>, [">= 0"])
    end
  else
    s.add_dependency(%q<spox-ultraviolet>, [">= 0"])
  end
end
