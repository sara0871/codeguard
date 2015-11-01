require 'codequest/styleguide/rubocop'
require 'codequest/styleguide/js_hint'

module Codequest
  module Styleguide
    module_function

    def run
      Rubocop.copy
      JSHint.copy
    end
  end
end
