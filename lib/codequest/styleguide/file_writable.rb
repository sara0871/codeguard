module Codequest
  module Styleguide
    module FileWritable
      def write_to_file(path, content)
        FileUtils.chmod 'a+w', path if File.exist?(path)
        File.open(path, 'w+') { |f| f.write(content) }
        FileUtils.chmod 'a-w', path
      end
    end # module FileWritable
  end # module Styleguide
end # module Codequest
