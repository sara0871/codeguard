require 'codequest/styleguide/rubocop'

module Codequest
  module Styleguide
    module_function

    def run
      Rubocop.copy
    end
  end
end
