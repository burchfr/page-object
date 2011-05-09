# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "page-object/version"

Gem::Specification.new do |s|
  s.name        = "page-object"
  s.version     = PageObject::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jeff Morgan"]
  s.email       = ["jeff.morgan@leandog.com"]
  s.homepage    = "http://github.com/cheezy/page-object"
  s.summary     = %q{Page Object DSL for browser testing}
  s.description = %q{Page Object DSL that works with both Watir and Selenium}

  s.rubyforge_project = "page-object"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "watir-webdriver", '>= 0.2.3'

  s.add_development_dependency "rspec", ">= 2.5.0"
  s.add_development_dependency "cucumber", ">= 0.10.2"
  s.add_development_dependency "yard", ">= 0.6.8"
end