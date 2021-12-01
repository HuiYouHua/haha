module Haha
  class Command
    class Cache < Command
      class List < Cache
        self.summary = 'List the paths of pod caches for each known pod'

        self.description = <<-DESC
          Shows the content of the pods cache as a YAML tree output, organized by pod.
          If `NAME` is given, only the caches for that pod will be included in the output.
        DESC

        self.arguments = [
          CLAide::Argument.new('NAME', false),
        ]

        def self.options
          [[
             '--short', 'Only print the path relative to the cache root'
           ]].concat(super)
        end

        # shift_argument: 第一个参数
        # arg: 普通的实参，所谓的实参就是直接跟在命令后面的，且不带任何 -- 修饰的字符
        # flag:简单理解 flag 就是限定为 bool 变量的 option 类型参数
        # 如果 flag 前面添加带 --no- 则值为 false，否则为 true
        # option: 可选项参数，以 -- 为前缀且以 = 作为分割符来区分 key 和 value
        #
        def initialize(argv)
          @pod_name = argv.shift_argument
          @short_output = argv.flag?('short')
          super
        end

        def run
          puts "正在执行run命令... pod_name: #{@pod_name}"
          puts "正在执行run命令... @short_output: #{@short_output}"
        end
      end
    end
  end
end
