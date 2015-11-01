require 'fileutils'

module Codequest
  module Styleguide
    module JSHint
      module_function

      def copy
        path = File.join($LOAD_PATH.first, '../', 'js', 'jshint.yml')

        output = File.read path

        FileUtils.mkdir_p('config')
        File.open('config/jshint.yml', 'w+') { |f| f.write(output) }
      end
    end # module JSHint
  end # module Styleguide
end # module Codequest
