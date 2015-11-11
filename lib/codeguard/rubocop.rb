module Codeguard
  module Rubocop
    module_function

    def config_project_path
      Pathname.new '.rubocop.yml'
    end

    def config_gem_path
      Codeguard.config_path.join('.rubocop.yml')
    end
  end # module Rubocop
end # module Codeguard
