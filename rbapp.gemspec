# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rbapp/version"

Gem::Specification.new do |s|
  s.name        = "rbapp"
  s.version     = Rbapp::VERSION
  s.authors     = ["Jorge L. Cangas"]
  s.email       = ["jorge.cangas@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{ruby console app generator}
  s.description = %q{ruby console app generator}

  s.rubyforge_project = "rbapp"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "thor"
end

