require "rubygems"
require 'bundler'
Bundler.require
require 'byebug' if development?
require 'ipaddr'
require 'sinatra'
require 'sinatra/flash'
require 'sinatra/json'
require 'sinatra/content_for'
require "bundler/setup"
require "sinatra/activerecord"

require 'will_paginate'
require 'will_paginate/active_record'

class TextConverter < Sinatra::Base
   Dir[File.join(Sinatra::Application.root, 'app', 'controllers', '*.rb')].each { |f| require f }
   Dir[File.join(Sinatra::Application.root, 'app', 'models', '*.rb')].each { |f| require f }
   Dir[File.join(Sinatra::Application.root, 'app', 'services', '*.rb')].each { |f| require f }
  helpers Sinatra::ContentFor
  helpers Sinatra::JSON
  helpers WillPaginate::Sinatra::Helpers

  register Sinatra::Flash
  set :views, proc { File.join(Sinatra::Application.root, 'app', 'views') }
  set :method_override, true
end
