require 'rainbow'
module Codeguard
  class Diff
    extend Forwardable
    attr_reader :lint, :raw_diff

    def self.perform(lint)
      new(lint).tap(&:perform)
    end

    def initialize(lint)
      @lint = lint
    end

    def perform
      @raw_diff = Diffy::Diff.new(config_gem_path.to_s,
                                  config_project_path.to_s,
                                  source: 'files')
    end

    def diff
      raw_diff.to_s(:color) unless diff_empty?
    end

    def message
      if !File.exist?(config_project_path)
        Rainbow("#{config_project_path} does not exists. " \
          'Run `codeguard install`.').yellow
      elsif !diff_empty?
        Rainbow("#{config_project_path} was changed.").red
      else
        Rainbow("#{config_project_path} is OK!").green
      end
    end

    private

    def diff_empty?
      raw_diff.to_s.empty?
    end

    def_delegators :lint, :config_project_path, :config_gem_path
  end # class Diff
end # module Codeguard
