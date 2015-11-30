module Codeguard
  module JadeLint
    module_function

    def config_project_path
      Pathname.new '.jade-lint.json'
    end

    def config_gem_path
      Codeguard.config_path.join('.jade-lint.json')
    end
  end # module JadeLint
end # module Codeguard
