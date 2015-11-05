require 'diffy'
require 'codequest/styleguide/install'
require 'codequest/styleguide/coffeelint'
require 'codequest/styleguide/js_hint'
require 'codequest/styleguide/rubocop'
require 'codequest/styleguide/scss_lint'
require 'codequest/styleguide/diff'

module Codequest
  module Styleguide
    CHECKS = [Coffeelint, JSHint, Rubocop, SCSSLint]

    module_function

    def install
      CHECKS.each do |check|
        Install.perform(check)
      end
    end

    def diff
      checks = CHECKS.map do |check|
        diff = Diff.perform(check)
        [diff.diff, diff.message]
      end
      transposed = checks.transpose
      puts transposed.first.compact
      puts transposed.last.compact
    end

    def help
      puts %(
        styleguide help    - show this message
        styleguide install - install config for current project
        styleguide diff - check if the files were not modified

        The project will use configuration for:
        - coffeelint (http://www.coffeelint.org/)
        - js_hint (https://github.com/damian/jshint)
        - rubocop (https://github.com/bbatsov/rubocop)
        - scss_lint (https://github.com/brigade/scss-lint)
      )
    end

    def gem_root
      Pathname.new($LOAD_PATH.first).join('../')
    end
  end # module Styleguide
end # module Codequest
