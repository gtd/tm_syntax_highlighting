# TmSyntaxHighlighting

## Important Version 2.0 Notes

This fork of the original tm_syntax_highlithing gem was created for ruby 1.9 compatibility at a time when the
`ultraviolet` gem did not support it.  This was done with the `spox-ultraviolet` fork, however this fork did not support
ruby 1.9.3.  The original `ultraviolet` gem has since released a 1.0.0 version that *does* support 1.9.3, and ostensibly
1.8.7 as well (though I have no plans to test that).

**Important: Make sure you don't have spox-ultraviolet installed or it may supercede the regular ultraviolet and break
Ruby 1.9.3**

So the 2.0 version of this gem should have greatly improved compatibility, but note that the underlying libraries
introduced new lang identifiers, so for instance, 'ruby' must be specified as 'source.ruby'.  If you're using this
plugin you wall want to audit your lang strings for correctness.



## Gems, Generators and Versions

TextMate theme based highlighting for Rails 3.

This plugin was originally written by Arya Asemanfar.  Rails 3 generator and 1.9.x compatibility by Gabe da Silveira.

I namespaced it as dasil003-tm_syntax_highlighting to avoid interference with the original.



## Installation

On Ruby 1.9 you simply install the gem:

    $ gem install dasil003-tm_syntax_highlighting

On Ruby 1.8 you will need to install Oniguruma (http://www.geocities.jp/kosako3/oniguruma/).  I haven't
actually tested this gem under Oniguruma, but `ultraviolet` claims support, so I will too.  If there is a problem in
1.8, please feel free to submit a patch.



## CSS Generator

It just copies all the syntax files from ultraviolet into your stylesheets directory.  I haven't had time to figure out
the Thor setup in Rails 3, so sue me.

    # generate all the ultraviolet css theme files in public/stylesheets/syntax/*
    $ rails generate syntax_css



## Examples

The plugin adds 2 view helper methods: `code` and `syntax_css`


### code (helper method) usage

    code(some_ruby_code, :theme => "twilight", :lang => "source.ruby", :line_numbers => true)

`lang` and `line_numbers` are optional. `lang` will default to plain_text and `line_numbers` will default to true.

It is *HIGHLY* recommended that you fragment cache or some other type of caching for code fragments because `ultraviolet` is fairly slow.

Theme can be an array, and one will be chosen at random.

You can set defaults in an initializer:

    # config/initializers/tm_syntax_config.rb
    TmSyntaxHighlighting.defaults = {:theme => "sunburst", :line_numbers => true, :lang => "source.ruby"}

Again, theme can be an array and will be chosen at random.


### syntax_css (helper_method) usage

The syntax_css method will include the stylesheet tags for the themes. You can call it with a theme name

    syntax_css("twilight")

or if you call it with no options, it will include all the css files for the themes used in this request

    code(some_ruby_code, :theme => "twilight")
    code(some_more_ruby_code, :theme => "sunburst")
    ...
    syntax_css # yields stylesheet tags for both twilight and sunburst
