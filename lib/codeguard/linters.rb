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

    def for(type, options)
      options = defaults[type].merge(options)

      included = options.fetch(:include) { AVAILABLE[type].keys }
      excluded = options.fetch(:exclude) { [] }
      selected = included - excluded

      AVAILABLE[type].select { |key, _| selected.include?(key) }
    end

    def default_options
      YAML.load(IO.read('.codeguard.yml'))
    rescue
      {project: {}, local: {}}
    end
  end # class Linters
end # module Codeguard
