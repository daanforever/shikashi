# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "shikashi-the-north"
  gem.version       = '0.1'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.authors       = ["Joey Perira", "Adam Williams"]
  gem.email         = ["joey@pereira.io"]
  gem.summary       = %q{Shikashi is a ruby sandbox for running arbitrary Ruby code with eval.}
  gem.description   = %q{Shikashi allows whitelisting specific language features, from constants, to system modules, to arbitrary functions. This allows compete control over what evaluated code can do, restricting use outside of specification. WARNING: changes made in this package are experimental and can cause security flaws at the gain of performance.}
  gem.homepage      = "https://github.com/xLegoz/shikashi"
  # gem.license       = 'MIT'

  gem.add_dependency 'evalhook', '~> 0.6.0'
  gem.add_dependency 'getsource', '~> 0.2.2'
  gem.add_development_dependency 'ruby-prof'
end
