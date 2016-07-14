# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rulers_sam/version'

Gem::Specification.new do |spec|
  spec.name          = "rulers_sam"
  spec.version       = RulersSam::VERSION
  spec.author        = "Sam Turner"
  spec.authors       = ["Sam Turner"]
  spec.email         = ["sam3turner@gmail.com"]
  spec.platform      = Gem::Platform::RUBY

  spec.summary       = %q{This is going to be a super short summary.}
  spec.description   = %q{This is meant to be a longer summary, so here it is.}
  spec.homepage      = "https://github.com/samdturner/rulers_sam.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "rack", "~> 2.0"
end
