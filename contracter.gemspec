# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'contracter/version'

Gem::Specification.new do |spec|
  spec.name          = "contracter"
  spec.version       = Contracter::VERSION
  spec.authors       = ["Remi Gelinas"]
  spec.email         = ["remigelinas1@gmail.com"]

  spec.summary       = %q{A quality of life gem for contract generation.}
  spec.description   = %q{A quality of life gem that provides a simple DSL for generating contracts.}
  spec.homepage      = "https://github.com/remi-gelinas/contracter"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
