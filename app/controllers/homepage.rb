class TextConverter < Sinatra::Base

 get "/" do
   erb :'homepage/index'
 end
 post "/convert_text/" do
   @text_to_convert=params[:text_to_convert]
   @converted_text = Converter.convert_text(@text_to_convert)
   erb :'homepage/index'
 end
end
