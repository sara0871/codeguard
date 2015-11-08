module Codeguard
  module PreCommit
    module_function

    def config_project_path
      Pathname.new 'config/pre_commit.yml'
    end

    def config_gem_path
      Codeguard.config_path.join('pre_commit.yml')
    end

    def after_install
      return if `which rvm`.empty?
      system('git config pre-commit.ruby "rvm `rvm current` do ruby"')
    end
  end # module PreCommit
end # module Codeguard
