
module Haha
  class Command
    class Env < Command
      self.summary = 'Display pod environment'
      self.description = 'Display pod environment.'

      def self.options
        options = []
        options.concat(super.reject { |option, _| option == '--silent' })
      end

      def initialize(argv)
        super
      end

      def run
        puts '正在执行env命令...'
      end
    end
  end
end