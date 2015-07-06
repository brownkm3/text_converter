require File.expand_path('../text_converter', __FILE__)

map '/' do
  run TextConverter
end
