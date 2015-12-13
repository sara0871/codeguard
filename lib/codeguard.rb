require 'diffy'
require 'yaml'
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
require 'codeguard/linters'

module Codeguard
  module_function

  def install(options = {})
    Linters.for(:project, options).each do |_, lint|
      Install.perform(lint)
    end
  end

  def setup(options = {})
    Linters.for(:local, options).each do |_, lint|
      Setup.perform(lint)
    end
  end

  def diff(options = {})
    lints = Linters.for(:project, options).map do |_, lint|
      diff = Diff.perform(lint)
      [diff.diff, diff.message]
    end
    transposed = lints.transpose
    puts transposed.first.compact
    puts transposed.last.compact
  end

  def help(_options = {})
    puts IO.read(gem_root.join('HELP.md'))
  end

  def config_path
    gem_root.join('config')
  end

  def gem_root
    Pathname.new($LOAD_PATH.first).join('../')
  end
end # module Codeguard
