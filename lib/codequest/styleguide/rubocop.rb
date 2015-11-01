module Codequest
  module Styleguide
    module Rubocop
      module_function

      def install
        output = Styleguide.gem_root.join('ruby', '.rubocop.yml').read

        File.open('.rubocop.yml', 'w+') { |f| f.write(output) }
      end
    end # module Rubocop
  end # module Styleguide
end # module Codequest
