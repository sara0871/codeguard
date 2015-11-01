require 'fileutils'

module Codequest
  module Styleguide
    module JSHint
      module_function

      def install
        output = Styleguide.gem_root.join('js', 'jshint.yml').read

        FileUtils.mkdir_p('config')
        File.open('config/jshint.yml', 'w+') { |f| f.write(output) }
      end
    end # module JSHint
  end # module Styleguide
end # module Codequest
