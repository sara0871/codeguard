module Codeguard
  module Reek
    module_function

    def config_project_path
      Pathname.new 'config.reek'
    end

    def config_gem_path
      Codeguard.config_path.join('config.reek')
    end
  end # module Rubocop
end # module Codeguard
