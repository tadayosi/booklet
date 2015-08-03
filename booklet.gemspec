# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'booklet/version'

Gem::Specification.new do |spec|
  spec.name          = "booklet"
  spec.version       = Booklet::VERSION
  spec.authors       = ["Tadayoshi Sato"]
  spec.email         = ["sato.tadayoshi@gmail.com"]

  spec.summary       = "Make your PDF a booklet."
  spec.description   = "This command converts PDFs to booklets."
  spec.homepage      = "https://github.com/tadayosi/booklet"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3"
end
