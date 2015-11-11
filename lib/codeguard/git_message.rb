require 'rainbow'
module Codeguard
  module GitMessage
    module_function

    def config_project_path
      Pathname.new '.gitmessage'
    end

    def config_gem_path
      Codeguard.config_path.join('.gitmessage')
    end

    def setup
      `git config commit.template .gitmessage`
      puts Rainbow('commit.template was added to git config').green
    end
  end # module GitMessage
end # module Codeguard
