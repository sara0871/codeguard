require 'rainbow'
module Codeguard
  class Setup
    extend Forwardable
    attr_accessor :lint

    def self.perform(lint)
      new(lint).tap(&:perform)
    end

    def initialize(lint)
      @lint = lint
    end

    def perform
      lint.setup
      puts Rainbow("Setup for #{lint} was finished.").green
    end
  end # class Setup
end # module Codeguard
