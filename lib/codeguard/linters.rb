module Codeguard
  module Linters
    AVAILABLE = {
      project: {
        coffelint:   Coffeelint,
        git_message: GitMessage,
        js_hint:     JSHint,
        pre_commit:  PreCommit,
        reek:        Reek,
        rubocop:     Rubocop,
        scss_lint:   SCSSLint,
        slim_lint:   SlimLint,
      },
      local: {
        git_message: GitMessage,
        pre_commit:  PreCommit,
      },
    }

    module_function

    def all
      (AVAILABLE[:project].keys + AVAILABLE[:local].keys).uniq
    end

    def for(type, options = {})
      options = default_options.merge(options)

      included = options.fetch(:include) { AVAILABLE[type].keys }
      excluded = options.fetch(:exclude) { [] }
      selected = included - excluded

      AVAILABLE[type].select { |key, _| selected.include?(key) }
    end

    def default_options
      YAML.load(IO.read('.codeguard.yml'))
    rescue
      {}
    end
  end # class Linters
end # module Codeguard
