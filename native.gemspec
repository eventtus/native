lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'native/version'

Gem::Specification.new do |spec|
  spec.name          = 'native'
  spec.version       = Native::VERSION
  spec.authors       = ['Omar Abdel-Wahab']
  spec.email         = ['owahab@gmail.com']

  spec.summary       = 'Install native dependencies for Ruby gems'
  spec.homepage      = 'https://github.com/owahab/native'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'bundler', '~> 1.0'
  spec.add_dependency 'ohai'
  spec.add_development_dependency 'rake', '~> 10.0'
end
