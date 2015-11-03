require 'fileutils'

module Codequest
  module Styleguide
    module Coffeelint
      module_function

      def install
        output = Styleguide.gem_root.join(
          'coffeescript', 'coffeelint.json').read

        File.open('coffeelint.json', 'w+') { |f| f.write(output) }
      end
    end # module Coffeelint
  end # module Styleguide
end # module Codequest
