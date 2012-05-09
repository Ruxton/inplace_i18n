$:.push File.expand_path("../lib", __FILE__)
require "inplace_i18n/version"

Gem::Specification.new do |s|
  s.name = "inplace_i18n"
  s.summary = "Inplace editing for rails i18n."
  s.description = "inplace_i18n is an Engine that provides Inplace editing for rails i18n."
  s.version = InplaceI18n::VERSION

  s.authors     = ["Ruxton"]
  s.email       = ["ruxton@thefrontiergroup.com.au"]
  s.homepage    = "http://ignite.digitalignition.net/"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.rubyforge_project = "inplace_i18n"

  s.add_dependency "ya2yaml"
end