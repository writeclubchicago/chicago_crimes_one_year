# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chicago_crimes_one_year/version'

Gem::Specification.new do |spec|
  spec.name          = "chicago_crimes_one_year"
  spec.version       = ChicagoCrimesOneYear::VERSION
  spec.authors       = ["writeclubchicago1 at yahoo.com"]
  spec.email         = ["writeclubchicago1 at yahoo.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{A free API Wrapper for Chicago Crimes from present searching back one year from the Chicago Open Data Portal.}
  spec.description   = %q{A free API Wrapper for Chicago Crimes from present searching back one year from the Chicago Open Data Portal. See https://data.cityofchicago.org/Public-Safety/Crimes-One-year-prior-to-present/x2n5-8w5q.}
  spec.homepage      = "https://github.com/writeclubchicago/chicago_crimes_one_year"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "unirest"
end
