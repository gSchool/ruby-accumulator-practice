# Write code that can transpose an array of arrays into another array of arrays
#
# You can use any methods you like on the input array except `#transpose`
def transpose(array)
  result = Array.new(array.length) { Array.new(array.length) { 0 }}
  i = 0
  j = 0

  until i == array.length
    j = 0
    until j == array.length
      result[i][j] = array[j][i]
      j += 1
    end
  i += 1
  end

  result
end

require 'rspec'
require 'rspec/autorun'

RSpec.describe '#transpose' do

  it 'returns an empty array when given an empty array' do
    actual = transpose([])

    expect(actual).to eq([])
  end

  it 'returns string joined by commas with the last two words joined by the word "and"' do
    input = [
      ['top', 'middle', 'bottom'],
      ['top', 'middle', 'bottom'],
      ['top', 'middle', 'bottom'],
    ]
    expected = [
      ['top', 'top', 'top'],
      ['middle', 'middle', 'middle'],
      ['bottom', 'bottom', 'bottom'],
    ]
    actual = transpose(input)

    expect(actual).to eq(expected)
  end

end
