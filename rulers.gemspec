require_relative 'lib/rulers/version'

Gem::Specification.new do |spec|
  spec.name          = "rulers"
  spec.version       = Rulers::VERSION
  spec.authors       = ["Vern Townsend"]
  spec.email         = ["107884893+Vtown121@users.noreply.github.com"]

  spec.summary = %q{A Rack-based Web Framework}
  spec.description = %q{A Rack-based Web Framework, but with extra awesome.}
  spec.homepage      = ""
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rack", "~>2.2"
  # Recent Ruby removes Webrick, so add it back
  spec.add_runtime_dependency "webrick"
end
