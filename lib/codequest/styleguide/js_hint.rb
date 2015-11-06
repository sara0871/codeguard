module Codequest
  module Styleguide
    module JSHint
      module_function

      def config_project_path
        Pathname.new 'config/jshint.yml'
      end

      def config_gem_path
        Styleguide.gem_root.join('js', 'jshint.yml')
      end
    end # module JSHint
  end # module Styleguide
end # module Codequest
