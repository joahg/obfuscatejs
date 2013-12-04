$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "obfuscatejs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "obfuscatejs"
  s.version     = Obfuscatejs::VERSION
  s.authors     = ["Joah Gerstenberg"]
  s.email       = ["me@joahg.com"]
  s.homepage    = "https://github.com/JoahG/obfuscatejs"
  s.summary     = "Simple Rails plugin to obfuscate strings in views."
  s.description = "Simple Rails plugin to obfuscate strings in views."

  s.files = Dir["{lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", ">= 3.2.11"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "rspec-rails"
end
