module Codequest
  module Styleguide
    module CLI
      AVAILABLE_OPTIONS = %w(install help)

      module_function

      def run(*args)
        Styleguide.help if args.empty?

        args.each do |arg|
          unless AVAILABLE_OPTIONS.include?(arg)
            puts "Invalid option: #{arg}"
            return Styleguide.help
          end

          Styleguide.send(arg)
        end
      end
    end # module ClI
  end # module Styleguide
end # module Codequest
