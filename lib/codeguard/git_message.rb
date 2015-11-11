module Codeguard
  module GitMessage
    module_function

    def config_project_path
      Pathname.new '.gitmessage'
    end

    def config_gem_path
      Codeguard.config_path.join('.gitmessage')
    end

    def after_install
      `git config commit.template .gitmessage`
    end
  end # module GitMessage
end # module Codeguard
