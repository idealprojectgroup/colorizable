$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'colorizable/version_number'

Gem::Specification.new do |s|
  s.name          = 'colorizable'
  s.version       = Colorizable.version
  s.platform      = Gem::Platform::RUBY
  s.summary       = "Provides an integration of the color gem with Rails"
  s.description   = s.summary
  s.authors       = ["Derek Hopper"]
  s.email         = 'hopper.derek@gmail.com'
  s.homepage      = 'http://github.com/idealprojectgroup/colorizable'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.required_rubygems_version = '>= 1.3.6'
  s.required_ruby_version = '>= 1.9'

  s.add_dependency('rails','>= 3.1')
  s.add_dependency('color', '~> 1.8')

  s.add_development_dependency('rspec', '~> 3.0')
  s.add_development_dependency('rspec-rails')
  s.add_development_dependency('database_cleaner', '~> 1.3.0')
  s.add_development_dependency('sqlite3')
  s.add_development_dependency('rake')
end
