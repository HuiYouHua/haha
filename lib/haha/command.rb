require 'claide'

module Haha
  class Command < CLAide::Command

    require 'haha/command/cache'
    require 'haha/command/env'

    self.abstract_command = true
    self.command = 'haha'
    self.version = VERSION
    self.description = '这是我的一个 ruby 命令行工具.'
    self.plugin_prefixes = %w(claide)

    def self.options
      [
        ['--silent', 'Show nothing'],
      ].concat(super)
    end

    def self.run(argv)
      super(argv)
    end

    def initialize(argv)
      super
    end

  end
end