module Codequest
  module Styleguide
    module Coffeelint
      module_function

      def config_project_path
        Pathname.new 'coffeelint.json'
      end

      def config_gem_path
        Styleguide.gem_root.join('coffeescript', 'coffeelint.json')
      end
    end # module Coffeelint
  end # module Styleguide
end # module Codequest
