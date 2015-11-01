require 'codequest/styleguide/rubocop'
require 'codequest/styleguide/js_hint'

module Codequest
  module Styleguide
    module_function

    def install
      Rubocop.copy
      JSHint.copy
    end

    def help
      puts %(
        styleguide help    - show this message
        styleguide install - install config for current project

        The project will receive configuration for:
        - rubocop
        - js_hint
      )
    end
  end # module Styleguide
end # module Codequest
