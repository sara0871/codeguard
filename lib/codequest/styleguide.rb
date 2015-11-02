require 'codequest/styleguide/file_writable'
require 'codequest/styleguide/coffeelint'
require 'codequest/styleguide/js_hint'
require 'codequest/styleguide/rubocop'

module Codequest
  module Styleguide
    module_function

    def install
      Rubocop.install
      JSHint.install
      Coffeelint.install
    end

    def help
      puts %(
        styleguide help    - show this message
        styleguide install - install config for current project

        The project will receive configuration for:
        - rubocop
        - js_hint
        - coffeelint (installation guide: http://www.coffeelint.org/)
      )
    end

    def gem_root
      Pathname.new($LOAD_PATH.first).join('../')
    end
  end # module Styleguide
end # module Codequest
