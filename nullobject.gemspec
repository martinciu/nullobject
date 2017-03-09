# -*- encoding: utf-8 -*-
require File.expand_path("../lib/nullobject/version", __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Marcin Ciunelis"]
  gem.email         = ["marcin.ciunelis@gmail.com"]
  gem.description   = "Null Object Design Pattern Ruby implementation"
  gem.summary       = ""
  gem.homepage      = ""
  gem.license       = "MIT"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "nullobject"
  gem.require_paths = ["lib"]
  gem.version       = Nullobject::VERSION

  gem.add_development_dependency "rake", "~> 10.4.2"
  gem.add_development_dependency "minitest", "~> 4.7.5"
  gem.add_development_dependency "turn", "~> 0.9.7"
end
