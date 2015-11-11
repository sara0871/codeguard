module Codeguard
  module Coffeelint
    module_function

    def config_project_path
      Pathname.new 'coffeelint.json'
    end

    def config_gem_path
      Codeguard.config_path.join('coffeelint.json')
    end
  end # module Coffeelint
end # module Codeguard
