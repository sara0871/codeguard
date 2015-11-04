require 'diffy'
require 'codequest/styleguide/file_writable'
require 'codequest/styleguide/coffeelint'
require 'codequest/styleguide/js_hint'
require 'codequest/styleguide/rubocop'
require 'codequest/styleguide/diff'

module Codequest
  module Styleguide
    CHECKS = [Rubocop, JSHint, Coffeelint]

    module_function

    def install
      CHECKS.each(&:install)
    end

    def diff
      checks = CHECKS.map do |check|
        diff = Diff.process(check)
        [diff.diff, diff.message]
      end
      transposed = checks.transpose
      puts transposed.to_s
      puts transposed.first.compact
      puts transposed.last.compact
    end

    def help
      puts %(
        styleguide help    - show this message
        styleguide install - install config for current project
        styleguide diff - check if the files were not modified

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
