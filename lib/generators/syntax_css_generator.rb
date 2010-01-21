require 'rails/generators'

class SyntaxCssGenerator < Rails::Generators::Base
  def install_syntax_css
    Uv.themes.each do |theme|
      fullpath = File.join(Uv.path, "render", "xhtml", "files", "css", "#{theme}.css")
      copy_file(fullpath, "public/stylesheets/syntax/#{theme}.css")
    end
  end
end