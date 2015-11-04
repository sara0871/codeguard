require 'fileutils'

module Codequest
  module Styleguide
    module JSHint
      extend FileWritable

      module_function

      def install
        output = config_gem_path.read

        FileUtils.mkdir_p('config')

        write_to_file(config_project_path, output)
      end

      def config_project_path
        'config/jshint.yml'
      end

      def config_gem_path
        Styleguide.gem_root.join('js', 'jshint.yml')
      end
    end # module JSHint
  end # module Styleguide
end # module Codequest
