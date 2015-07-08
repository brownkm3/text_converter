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
    if params.has_key? 'file'
      file=params[:file][:tempfile]
      @text_to_convert = file.read
      @converted_text = Converter.convert_text(@text_to_convert.split(/\n/))
    else
      @converted_text=[]
      flash.now[:error] = "please choose a file before submitting"
    end
      erb :'homepage/index'
  end
end
