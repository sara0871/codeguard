require 'diffy'
require 'codeguard/install'
require 'codeguard/coffeelint'
require 'codeguard/js_hint'
require 'codeguard/rubocop'
require 'codeguard/scss_lint'
require 'codeguard/git_message'
require 'codeguard/diff'

module Codeguard
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
      codeguard help    - show this message
      codeguard install - install config for current project
      codeguard diff    - check if the files were not modified

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
end # module Codeguard
