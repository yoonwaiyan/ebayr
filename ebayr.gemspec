# -*- encoding : utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.authors       = ['JJ Buckley']
  gem.email         = ["jj@bjjb.org"]
  gem.summary       = "A tidy library for using the eBay Trading API with Ruby"
  gem.description   = <<-DESCRIPTION
eBayR is a gem that makes it (relatively) easy to use the eBay Trading API from
Ruby. Includes a self-contained XML parser, a flexible callback system, and a
command-line client which aids integration into other projects.
  DESCRIPTION
  gem.homepage      = "http://github.com/bjjb/ebayr"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^test/})
  gem.name          = "ebayr"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.10"
  gem.add_dependency 'nokogiri', '~> 1.6'
  gem.add_dependency 'activesupport', '>= 4.0', '< 6'
  gem.add_development_dependency 'rake', '~> 12.0'
  gem.add_development_dependency 'fakeweb', '~> 1.3.0'
end
