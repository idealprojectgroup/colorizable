require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new do |t|
  t.rspec_opts = %w[--color]
  t.pattern = 'spec/**/*_spec.rb'
end

task :test => :spec
task :default => :spec

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))
