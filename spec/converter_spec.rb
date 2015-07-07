require 'spec_helper'

describe Converter, '.convert_text' do

  let(:single_element_array)        { ["bill ben flowerpot men"] }
  let(:multiple_element_array)      { ["one two three", "four five", "un"] }
  let(:single_element_result)       { ["bill men"] }
  let(:multiple_element_result)     { ["one three", "four five", "un un"] }

  it 'returns the first and last word of a single element array' do
    expect(Converter.convert_text(single_element_array)).to eq(single_element_result)
  end

  it 'returns the first and last words in each line of an array' do
    expect(Converter.convert_text(multiple_element_array)).to eq(multiple_element_result)
  end
end
