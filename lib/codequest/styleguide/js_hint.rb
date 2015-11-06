module Codequest
  module Styleguide
    module JSHint
      module_function

      def config_project_path
        Pathname.new 'config/jshint.yml'
      end

      def config_gem_path
        Styleguide.config_path.join('jshint.yml')
      end
    end # module JSHint
  end # module Styleguide
end # module Codequest
