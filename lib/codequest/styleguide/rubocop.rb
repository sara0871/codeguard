module Codequest
  module Styleguide
    module Rubocop
      module_function

      def copy
        path = File.join($LOAD_PATH.first, '../', 'ruby', '.rubocop.yml')

        output = File.read path

        File.open('.rubocop.yml', 'w+') { |f| f.write(output) }
      end
    end
  end
end
