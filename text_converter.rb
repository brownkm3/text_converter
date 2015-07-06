require "rubygems"

require "bundler/setup"
require "byebug"
require "sinatra"
require "sinatra/activerecord"
require "sinatra/flash"
require "haml"

class TextConverter < Sinatra::Base
   Dir[File.join(Sinatra::Application.root, 'app', 'controllers', '*.rb')].each { |f| require f }
   Dir[File.join(Sinatra::Application.root, 'app', 'models', '*.rb')].each { |f| require f }
   Dir[File.join(Sinatra::Application.root, 'app', 'services', '*.rb')].each { |f| require f }
  set :views, proc { File.join(Sinatra::Application.root, 'app', 'views') }
  register Sinatra::Flash
end
