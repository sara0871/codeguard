require 'rainbow'
module Codeguard
  class Install
    extend Forwardable
    attr_accessor :lint

    def self.perform(lint)
      new(lint).tap(&:perform)
    end

    def initialize(lint)
      @lint = lint
    end

    def perform
      output = config_gem_path.read
      prepare_dir
      output = if write_to_file(config_project_path, output)
                 "File: #{config_project_path} was updated!"
               else
                 "File: #{config_project_path} was created!"
               end
      puts Rainbow(output).green
    end

    private

    def prepare_dir
      dir = config_project_path.to_s[%r{(.*)\/[\w\.-]*}, 1]
      FileUtils.mkdir_p(dir) unless dir.nil?
    end

    def write_to_file(path, content)
      if (updating = File.exist?(path))
        FileUtils.chmod 'a+w', path
      end
      File.open(path, 'w+') { |f| f.write(content) }
      FileUtils.chmod 'a-w', path
      updating
    end

    def_delegators :lint, :config_project_path, :config_gem_path
  end # class Install
end # module Codeguard
