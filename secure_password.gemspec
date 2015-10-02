# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'secure_password/version'

Gem::Specification.new do |spec|
  spec.name          = "secure_password"
  spec.version       = SecurePassword::VERSION
  spec.authors       = ["Leonardo Rodrigues Nogueira"]
  spec.email         = ["leonardo@ntec.com.br"]

  spec.summary       = %q{Gem to provide secure passwords plugin to Lotus::Model}
  spec.description   = %q{This gem is a build from the original work of https://github.com/benlovell}
  spec.homepage      = "https://github.com/leonogueira/secure_password"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "minitest-reporters"
end
