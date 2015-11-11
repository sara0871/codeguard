module Codequest
  module Styleguide
    module Coffeelint
      module_function

      def config_project_path
        Pathname.new 'coffeelint.json'
      end

      def config_gem_path
        Styleguide.config_path.join('coffeelint.json')
      end
    end # module Coffeelint
  end # module Styleguide
end # module Codequest
