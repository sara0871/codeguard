module Codeguard
  module SCSSLint
    module_function

    def config_project_path
      Pathname.new '.scss-lint.yml'
    end

    def config_gem_path
      Codeguard.config_path.join('.scss-lint.yml')
    end
  end # module SCSSLint
end # module Codeguard
