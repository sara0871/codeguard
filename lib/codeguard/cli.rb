module Codeguard
  module CLI
    AVAILABLE_OPTIONS = %w(install help diff)

    module_function

    def run(*args)
      command = args.shift
      unless AVAILABLE_OPTIONS.include?(command)
        puts "Invalid option: #{command}\n\n" if command
        command = :help
      end

      Styleguide.send(command || :help, *args)
    end
  end # module CLI
end # module Codeguard
