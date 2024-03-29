# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/recipe/php56/version'

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-recipe-php56"
  spec.version       = Itamae::Plugin::Recipe::Php56::VERSION
  spec.authors       = ["Koichi Tsutsumi"]
  spec.email         = ["koichi.tsutsumi@gmail.com"]

  spec.summary       = %q{Itamae recipe plugin for install PHP 5.6}
  spec.description   = %q{Itamae recipe plugin for install PHP 5.6}
  spec.homepage      = "https://github.com/ktutumi/itamae-plugin-recipe-php56/"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "itamae", "~> 1.3.1"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
