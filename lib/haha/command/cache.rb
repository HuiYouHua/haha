require 'haha/command/cache/clean'
require 'haha/command/cache/list'

module Haha
  class Command
    class Cache < Command
      # 表示是抽象的，还需要具体的子命令去执行
      self.abstract_command = true
      self.summary = 'Manipulate the CocoaPods cache'

      self.description = <<-DESC
        Manipulate the download cache for pods, like printing the cache content
        or cleaning the pods cache.
      DESC

      def initialize(argv)
        super
      end
    end
  end
end