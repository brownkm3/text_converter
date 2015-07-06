ENV['RACK_ENV'] = 'test'

require File.expand_path('../../text_converter.rb', __FILE__)

require 'capybara/rspec'
require 'byebug'
require 'rack/test'
require 'rspec'
require 'shoulda-matchers'

Dir[File.join(Sinatra::Application.root, 'spec', 'support', '**', '*.rb')].each { |f| require f }

set :run,           false
set :raise_errors,  true
set :logging,       false

I18n.enforce_available_locales = false

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

def app
  TextConverter
end
