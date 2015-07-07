class Converter 
  def self.convert_text(text_array)
    text_array.map do |line| 
      specific_conversion line
    end
  end

  private
  def self.specific_conversion text
    words = text.split
    words.first + " " + words.last
  end
end
