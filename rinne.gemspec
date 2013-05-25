# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rinne/version'

Gem::Specification.new do |spec|
  spec.name          = "rinne"
  spec.version       = Rinne::VERSION
  spec.authors       = ["naoto"]
  spec.email         = ["n.shingaki@gmail.com"]
  spec.description   = %q{Rinne - Camel case converter}
  spec.summary       = %q{Rinne - Camel case converter}
  spec.homepage      = "https://github.com/naoto/rinne"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'coveralls'

end
