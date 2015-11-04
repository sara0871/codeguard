require 'fileutils'

module Codequest
  module Styleguide
    module Coffeelint
      extend FileWritable

      module_function

      def install
        output = config_gem_path.read
        write_to_file(config_project_path, output)
      end

      def config_project_path
        'coffeelint.json'
      end

      def config_gem_path
        Styleguide.gem_root.join('coffeescript', 'coffeelint.json')
      end
    end # module Coffeelint
  end # module Styleguide
end # module Codequest
