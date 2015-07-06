if ENV['RACK_ENV'] != 'production'
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec) do |spec|
    #SimpleCov.start
    spec.rspec_opts = ['--backtrace']
    spec.verbose = false
  end
end
