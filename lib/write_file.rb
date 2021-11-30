

#打开Haha的module
module Haha
  class Writer
    def self.write_to(file_path, content)
      File.open(file_path, 'w+') { |f| f.write(content) }
    end

    def run(num)
      num + 1
    end
  end
end