module Haha
  class Command
    class Cache < Command
      class Clean < Cache
        self.summary = 'Remove the cache for pods'

        self.description = <<-DESC
          Remove the cache for a given pod, or clear the cache completely.

          If there is multiple cache for various versions of the requested pod,
          you will be asked which one to clean. Use `--all` to clean them all.

          If you do not give a pod `NAME`, you need to specify the `--all`
          flag (this is to avoid cleaning all the cache by mistake).
        DESC

        self.arguments = [
          CLAide::Argument.new('NAME', false),
        ]

        def self.options
          [[
             '--all', 'Remove all the cached pods without asking'
           ]].concat(super)
        end

        def initialize(argv)
          super
        end

        def run
          puts '正在执行clean命令...'
        end
      end
    end
  end
end
