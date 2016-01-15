require 'diffy'
require 'codeguard/install'
require 'codeguard/setup'
require 'codeguard/coffeelint'
require 'codeguard/js_hint'
require 'codeguard/reek'
require 'codeguard/rubocop'
require 'codeguard/scss_lint'
require 'codeguard/git_message'
require 'codeguard/diff'
require 'codeguard/pre_commit'
require 'codeguard/slim_lint'

module Codeguard
  LINTERS = [
    Coffeelint,
    GitMessage,
    JSHint,
    PreCommit,
    Reek,
    Rubocop,
    SCSSLint,
    SlimLint,
  ].freeze
  # Lints that require setup in every local environment
  LOCAL_LINTERS = [GitMessage, PreCommit].freeze

  module_function

  def install
    LINTERS.each do |lint|
      Install.perform(lint)
    end
  end

  def setup
    LOCAL_LINTERS.each do |lint|
      Setup.perform(lint)
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
    puts IO.read(gem_root.join('HELP.md'))
  end

  def config_path
    gem_root.join('config')
  end

  def gem_root
    Pathname.new($LOAD_PATH.first).join('../')
  end
end # module Codeguard
