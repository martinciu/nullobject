# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nullobject/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Marcin Ciunelis"]
  gem.email         = ["marcin.ciunelis@gmail.com"]
  gem.description   = %q{Null Object Design Pattern Ruby implementatin}
  gem.summary       = %q{}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "nullobject"
  gem.require_paths = ["lib"]
  gem.version       = Nullobject::VERSION


  gem.add_development_dependency "rake", "~> 0.9.2"
  gem.add_development_dependency "minitest", "~> 2.7.0"
  gem.add_development_dependency "turn", "~> 0.8.3"

end
