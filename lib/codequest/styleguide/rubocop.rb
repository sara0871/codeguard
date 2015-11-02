module Codequest
  module Styleguide
    module Rubocop
      extend FileWritable

      module_function

      def install
        output = Styleguide.gem_root.join('ruby', '.rubocop.yml').read

        write_to_file('.rubocop.yml', output)
      end
    end # module Rubocop
  end # module Styleguide
end # module Codequest
