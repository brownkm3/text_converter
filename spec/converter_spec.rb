require 'spec_helper'

describe Converter, '.convert_text' do

  it 'returns the first and last word of the input string' do
    expect(Converter.convert_text("one two three")).to eq("one three")
  end
end
