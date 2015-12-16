module Codeguard
  module CLI
    AVAILABLE_OPTIONS = %w(install setup help diff generate)

    module_function

    def run(*args)
      command = args.shift
      unless AVAILABLE_OPTIONS.include?(command)
        puts "Invalid option: #{command}\n\n" if command
        command = :help
      end

      options = extract_options(*args)
      Codeguard.send(command || :help, options)
    end

    def extract_options(*args)
      options = {}
      while (val = args.shift)
        if (key = val[/^--(.*)$/, 1])
          options[key.to_sym] = []
        else
          options[options.keys.last] << val.to_sym
        end
      end
      options
    end
  end # module CLI
end # module Codeguard
