module Codequest
  module Styleguide
    module Rubocop
      module_function

      def config_project_path
        Pathname.new '.rubocop.yml'
      end

      def config_gem_path
        Styleguide.config_path.join('.rubocop.yml')
      end
    end # module Rubocop
  end # module Styleguide
end # module Codequest
