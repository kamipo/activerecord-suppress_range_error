# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_record/suppress_range_error/version'

Gem::Specification.new do |spec|
  spec.name          = "activerecord-suppress_range_error"
  spec.version       = ActiveRecord::SuppressRangeError::VERSION
  spec.authors       = ["Ryuta Kamizono"]
  spec.email         = ["kamipo@gmail.com"]

  spec.summary       = %q{Suppressing RangeError during type casting}
  spec.description   = %q{Suppressing RangeError during type casting}
  spec.homepage      = "https://github.com/kamipo/activerecord-suppress_range_error"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_runtime_dependency "activerecord", ">= 4.2"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "sqlite3"
end
