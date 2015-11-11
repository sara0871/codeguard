module Codeguard
  module JSHint
    module_function

    def config_project_path
      Pathname.new 'config/jshint.yml'
    end

    def config_gem_path
      Codeguard.config_path.join('jshint.yml')
    end
  end # module JSHint
end # module Codeguard
