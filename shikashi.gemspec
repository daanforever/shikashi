
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "shikashi/version"

Gem::Specification.new do |spec|
  spec.name             = "shikashi"
  spec.version          = Shikashi::VERSION
  spec.authors          = ["Dario Seminara"]
  spec.email            = ["robertodarioseminara@gmail.com"]

  spec.summary          = %q{Ruby sandbox}
  spec.homepage         = "http://github.com/tario/shikashi"
  spec.description      = %q{shikashi is a ruby sandbox that permits the execution of "unprivileged" scripts by defining the permitted methods and constants the scripts can invoke with a white list logic}

  spec.platform         = Gem::Platform::RUBY

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files            = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.has_rdoc         = true
  spec.extra_rdoc_files = [ 'README.md' ]

  spec.bindir           = "bin"
  spec.executables      = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths    = ["lib"]

  spec.add_dependency "evalhook", ">= 0.6.0"
  spec.add_dependency "getsource", ">= 0.1.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "ruby-prof"
end
