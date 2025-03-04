RSpec.describe 'reduce' do

  it 'sums a list of numbers' do
    numbers = [32, 1, 21, 5, 81, 333]
    result = numbers.reduce(0) do |sum, number|
      sum + number
    end
    expect(result).to eq(473)
  end

  it 'subtracts a list of numbers' do
    numbers = [28, 12, 38, 1, 91]
    result = numbers.reduce(0) do |difference, number|
      difference - number
    end
    expect(result).to eq(-170)
  end

  it 'multiplies a list of numbers' do
    numbers = [2, 3, 5, 7]
    # initial value is 1
    result = numbers.reduce(1) do |multiplies, number|
      multiplies * number
    end
    expect(result).to eq(210)
  end

  it 'capitalize key words in phrase' do
    keywords = ["fish", "blue"]
    # initial value is 'one fish two fish red fish blue fish'
    result = keywords.reduce('one fish two fish red fish blue fish') do |capitalizes, word|
      capitalizes += word.upcase
    end
    expect(result).to eq('one FISH two FISH red FISH BLUE FISH')
  end

  xit 'divides 560 by a bunch of numbers' do
    numbers = [2, 2, 2, 5, 7]
    # initial value is 560
    # Your code goes here
    expect(result).to eq(2)
  end

  xit 'subtract smallest values from 100' do
    elements = [[8, 5, 3], [1, 9, 11], [4, 7, 2], [19, 34, 6]]
    # initial value is 100
    # Your code goes here
    expect(result).to eq(88)
  end

  xit 'adds all second values together' do
    elements = [["a", 1], ["b", 9], ["c", 21]]
    # initial value is 0
    # Your code goes here
    expect(result).to eq(31)
  end
end

