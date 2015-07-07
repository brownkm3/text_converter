class TextConverter < Sinatra::Base

  get "/" do
    @text_to_convert=''
    @converted_text=[]
    erb :'homepage/index'
  end
  post "/convert_text/" do
    @text_to_convert=params[:text_to_convert]
    @converted_text = Converter.convert_text(@text_to_convert.split(/\r\n/))
    erb :'homepage/index'
  end
  post "/clear_text/" do
    @text_to_convert=''
    @converted_text=[]
    erb :'homepage/index'
  end
  post "/upload_file/" do
    @filename = params[:file][:filename]
    file = params[:file][:tempfile]
    @text_to_convert = file.read
    @converted_text = Converter.convert_text(@text_to_convert.split(/\n/))
    erb :'homepage/index'
  end
end
