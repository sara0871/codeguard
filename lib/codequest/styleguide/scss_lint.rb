module Codequest
  module Styleguide
    module SCSSLint
      module_function

      def config_project_path
        Pathname.new '.scss-lint.yml'
      end

      def config_gem_path
        Styleguide.gem_root.join('scss', '.scss-lint.yml')
      end
    end # module SCSSLint
  end # module Styleguide
end # module Codequest
