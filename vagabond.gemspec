# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "vagabond/version"

Gem::Specification.new do |s|
  s.name        = "vagabond"
  s.version     = Vagabond::VERSION
  s.authors     = ["'Mike Glenn'"]
  s.email       = ["'mglenn@ilude.com'"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "vagabond"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "guard-bundler"
  s.add_development_dependency "ruby_gntp"
  #s.add_development_dependency 'win32console'

  # s.add_runtime_dependency "rest-client"
end
