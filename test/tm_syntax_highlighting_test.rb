require 'tm_syntax_highlighting'
require 'test/unit'

class TmSyntaxHighlightingTest < Test::Unit::TestCase
  def test_action_controller_methods_inclusion
    assert ActionController::Base.instance_methods.include?(:reset_syntax_css_includes)
  end

  def test_action_view_methods_inclusion
    assert ActionView::Base.instance_methods.include?(:code), ':code not included'
    assert ActionView::Base.instance_methods.include?(:syntax_css), ':syntax_css not included'
  end

  def test_code_helper
    @view = ActionView::Base.new
    html = @view.code("def ruby_method(param)\n  return :foo\nend", :lang => 'source.ruby')
    assert_match /span class="line-numbers"/, html, "no line number span found"
    assert_match /span class="Keyword"/, html, "no keyword span found"
    assert_match /span class="FunctionName"/, html, "no function name span found"
  end
end
