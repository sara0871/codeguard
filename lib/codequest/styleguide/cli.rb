module Codequest
  module Styleguide
    module CLI
      AVAILABLE_OPTIONS = %w(install help)

      module_function

      def run(*args)
        command = args.shift
        unless AVAILABLE_OPTIONS.include?(command)
          puts "Invalid option: #{command}"
          command = :help
        end

        Styleguide.send(command || :help, *args)
      end
    end # module CLI
  end # module Styleguide
end # module Codequest
