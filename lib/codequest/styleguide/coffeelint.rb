require 'fileutils'

module Codequest
  module Styleguide
    module Coffeelint
      extend FileWritable

      module_function

      def install
        output = Styleguide.gem_root.join(
          'coffeescript', 'coffeelint.json').read

        write_to_file('coffeelint.json', output)
      end
    end # module Coffeelint
  end # module Styleguide
end # module Codequest
