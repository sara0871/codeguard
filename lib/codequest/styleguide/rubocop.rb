module Codequest
  module Styleguide
    module Rubocop
      extend FileWritable

      module_function

      def install
        output = config_gem_path.read
        write_to_file(config_project_path, output)
      end

      def config_project_path
        '.rubocop.yml'
      end

      def config_gem_path
        Styleguide.gem_root.join('ruby', '.rubocop.yml')
      end
    end # module Rubocop
  end # module Styleguide
end # module Codequest
