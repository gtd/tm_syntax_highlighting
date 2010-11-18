require 'uv'

require 'action_controller'

require 'tm_syntax_highlighting/base'

ActionView::Base.send(:include, TmSyntaxHighlighting::Helper)
ActionController::Base.send(:extend, TmSyntaxHighlighting::Controller)
