require 'diffy'
require 'codequest/styleguide/install'
require 'codequest/styleguide/coffeelint'
require 'codequest/styleguide/js_hint'
require 'codequest/styleguide/rubocop'
require 'codequest/styleguide/scss_lint'
require 'codequest/styleguide/git_message'
require 'codequest/styleguide/diff'

module Codequest
  module Styleguide
    LINTERS = [Coffeelint, GitMessage, JSHint, Rubocop, SCSSLint]

    module_function

    def install
      LINTERS.each do |lint|
        Install.perform(lint)
      end
    end

    def diff
      lints = LINTERS.map do |lint|
        diff = Diff.perform(lint)
        [diff.diff, diff.message]
      end
      transposed = lints.transpose
      puts transposed.first.compact
      puts transposed.last.compact
    end

    def help
      puts %(
        styleguide help    - show this message
        styleguide install - install config for current project
        styleguide diff    - check if the files were not modified

        The project will use configuration for:
        - coffeelint (http://www.coffeelint.org/)
        - js_hint (https://github.com/damian/jshint)
        - rubocop (https://github.com/bbatsov/rubocop)
        - scss_lint (https://github.com/brigade/scss-lint)

        .gitmessage file will be added as a template in .git/config
      )
    end

    def config_path
      gem_root.join('config')
    end

    def gem_root
      Pathname.new($LOAD_PATH.first).join('../')
    end
  end # module Styleguide
end # module Codequest
