# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{tm_syntax_highlighting}
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Arya Asemanfar", "Gabe da Silveira"]
  s.date = %q{2010-01-21}
  s.description = %q{Uses the Ultraviolet gem to highlight any language that TextMate can highlight, and has a (Thor) generator to generate the relevant CSS files.}
  s.email = %q{gabe@websaviour.com}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitignore",
     "MIT-LICENSE",
     "README.md",
     "Rakefile",
     "VERSION",
     "install.rb",
     "lib/generators/USAGE",
     "lib/generators/syntax_css_generator.rb",
     "lib/tm_syntax_highlighting.rb",
     "lib/tm_syntax_highlighting/base.rb",
     "test/tm_syntax_highlighting_test.rb",
     "tm_syntax_highlighting.gemspec",
     "uninstall.rb"
  ]
  s.homepage = %q{http://github.com/gtd/tm_syntax_highlighting}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Gem plugin for Rails 3 to highlight code}
  s.test_files = [
    "test/tm_syntax_highlighting_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ultraviolet>, [">= 0"])
    else
      s.add_dependency(%q<ultraviolet>, [">= 0"])
    end
  else
    s.add_dependency(%q<ultraviolet>, [">= 0"])
  end
end

