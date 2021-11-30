# frozen_string_literal: true

require_relative "lib/haha/version"


Gem::Specification.new do |spec|
  spec.name          = "haha"
  spec.version       = Haha::VERSION
  spec.authors       = ["华惠友"]
  spec.email         = ["793316968@qq.com"]

  spec.summary       = "Write a short summary, because RubyGems requires one."
  spec.description   = "Write a longer description or delete this line."
  spec.homepage      = "https://github.com/AFNetworking"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  #依赖的文件
  spec.files = Dir["lib/**/*.rb"] + %w{ bin/haha README.md}
  #可执行文件
  spec.executables   =%w{haha}
  #导入的路径
  spec.require_paths = %w{lib}

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
