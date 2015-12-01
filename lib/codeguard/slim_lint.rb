module Codeguard
  module SlimLint
    module_function

    def config_project_path
      Pathname.new '.slim-lint.yml'
    end

    def config_gem_path
      Codeguard.config_path.join('.slim-lint.yml')
    end
  end # module SlimLint
end # module Codeguard
