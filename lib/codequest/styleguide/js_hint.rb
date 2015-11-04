require 'fileutils'

module Codequest
  module Styleguide
    module JSHint
      extend FileWritable

      module_function

      def install
        output = Styleguide.gem_root.join('js', 'jshint.yml').read

        FileUtils.mkdir_p('config')
        write_to_file('config/jshint.yml', output)
      end
    end # module JSHint
  end # module Styleguide
end # module Codequest
