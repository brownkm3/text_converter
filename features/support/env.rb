require 'capybara/cucumber'

require File.expand_path('../../../text_converter.rb', __FILE__)

Capybara.app = TextConverter
