require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the tm_syntax_highlighting plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the tm_syntax_highlighting plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'TmSyntaxHighlighting'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "dasil003-tm_syntax_highlighting"
    gemspec.summary = "Ruby 1.9.2 / Rails 3 plugin to highlight code"
    gemspec.description = "Uses the spox-ultraviolet gem to highlight any language that TextMate can highlight, and has a (Thor) generator to generate the relevant CSS files."
    gemspec.email = "gabe@websaviour.com"
    gemspec.homepage = "http://github.com/gtd/tm_syntax_highlighting"
    gemspec.authors = ["Arya Asemanfar", "Gabe da Silveira"]

    gemspec.add_dependency('ultraviolet')
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end
