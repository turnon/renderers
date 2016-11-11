# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'renderers/version'

Gem::Specification.new do |spec|
  spec.name          = 'renderers'
  spec.version       = Renderers::VERSION
  spec.authors       = ['ken']
  spec.email         = ['block24block@gmail.com']

  spec.summary       = 'To know how this render is invoked'
  spec.homepage      = 'https://github.com/turnon/renderers'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
