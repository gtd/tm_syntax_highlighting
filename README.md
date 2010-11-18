# TmSyntaxHighlighting



## Gems, Generators and Versions

TextMate theme based highlighting for Ruby 1.9.2 and Rails 3.

This plugin was originally written by Arya Asemanfar.  Rails 3 generator and 1.9.2 compatibility by Gabe da Silveira.

I namespaced it as dasil003-tm_syntax_highlighting to avoid interference with the original. **This version is incompatible
with Ruby 1.8.x**



## Installation

You may remember the setup for this plugin being complicated.  Well that was in Ruby 1.8 land.  Ruby 1.9 has oniguruma
built-in and thus everything becomes much less painful:

    $ gem install dasil003-tm_syntax_highlighting

which will also install `spox-ultraviolet`, the covertly 1.9 compatible version of ultraviolet.



## CSS Generator

It just copies all the syntax files from ultraviolet into your stylesheets directory.  I haven't had time to figure out
the Thor setup in Rails 3, so sue me.

    # generate all the ultraviolet css theme files in public/stylesheets/syntax/*
    $ rails generate syntax_css



## Examples

The plugin adds 2 view helper methods: `code` and `syntax_css`


### code (helper method) usage

    code(some_ruby_code, :theme => "twilight", :lang => "ruby", :line_numbers => true)

`lang` and `line_numbers` are optional. `lang` will default to plain_text and `line_numbers` will default to true.

It is *HIGHLY* recommended that you fragment cache or some other type of caching for code fragments because `ultraviolet` is fairly slow.

Theme can be an array, and one will be chosen at random.

You can set defaults in an initializer:

    # config/initializers/tm_syntax_config.rb
    TmSyntaxHighlighting.defaults = {:theme => "sunburst", :line_numbers => true, :lang => "ruby"}

Again, theme can be an array and will be chosen at random.


### syntax_css (helper_method) usage

The syntax_css method will include the stylesheet tags for the themes. You can call it with a theme name

    syntax_css("twilight")

or if you call it with no options, it will include all the css files for the themes used in this request

    code(some_ruby_code, :theme => "twilight")
    code(some_more_ruby_code, :theme => "sunburst")
    ...
    syntax_css # yields stylesheet tags for both twilight and sunburst
