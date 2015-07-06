class Converter 
  def self.convert_text(text)
    words = text.split
    words.first + " " + words.last
  end
end
