require 'fizzbuzz'

describe 'fizzbuzz' do

  it 'returns "fizz" when passed 3' do
    expect(fizzbuzz(3)).to eq 'fizz'
  end

  it 'returns "buzz" when passed 5' do
    expect(fizzbuzz(5)).to eq 'buzz'
  end

  it 'returns "fizzbuzz" when passed 15' do
    expect(fizzbuzz(15)).to eq 'fizzbuzz'
  end

  it 'returns "buzz" when passed 40' do
    expect(fizzbuzz(40)).to eq 'buzz'
  end

  it 'returns "fizz" when passed 99' do
    expect(fizzbuzz(99)).to eq 'fizz'
  end

  it 'returns 8 when passed 8' do
    expect(fizzbuzz(8)).to eq 8
  end

  it 'returns word when passed word' do
    expect(fizzbuzz('word')).to eq 'word'
  end

end
