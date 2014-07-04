# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rackdog/agent/version'

Gem::Specification.new do |spec|
  spec.name          = 'rackdog-agent'
  spec.version       = Rackdog::Agent::VERSION
  spec.authors       = ['Alexander Ablayev']
  spec.email         = ['a.ablayev@gmail.com']
  spec.summary       = %q(Short summary. Required.)
  spec.description   = %q(Longer description. Optional.)
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end
