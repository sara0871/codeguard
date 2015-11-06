module Codequest
  module Styleguide
    module GitMessage
      module_function

      def config_project_path
        Pathname.new '.gitmessage'
      end

      def config_gem_path
        Styleguide.config_path.join('.gitmessage')
      end

      def after_install
        `git config commit.template .gitmessage`
      end
    end # module GitMessage
  end # module Styleguide
end # module Codequest
