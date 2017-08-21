# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "spoton_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "spoton_view_tool"
  spec.version       = SpotonViewTool::VERSION
  spec.authors       = ["Marcin Szot"]
  spec.email         = ["info@spoton.pl"]

  spec.summary       = %q{Various view specific methods for applications I use.}
  spec.description   = %q{Prerenderes generated data for Rails applications.}
  spec.homepage      = "https://github.com/marcinsz"
  spec.license       = "MIT"



  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
