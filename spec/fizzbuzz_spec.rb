require 'fizzbuzz'

describe 'fizzbuzz' do
  it 'returns "fizz" when passed a multiple of 3' do
    (3..300).each do |n|
      if n % 3 == 0 && n % 5 != 0
        expect(fizzbuzz(n)).to eq 'fizz'
      end
    end
  end

  it 'returns "buzz" when passed a multiple of 5' do
    (3..300).each do |n|
      if n % 5 == 0 && n % 3 != 0
        expect(fizzbuzz(n)).to eq 'buzz'
      end
    end
  end

  it 'returns "fizzbuzz" when passed a multiple of 3 and 5' do
    (3..300).each do |n|
      if n % 5 == 0 && n % 3 == 0
        expect(fizzbuzz(n)).to eq 'fizzbuzz'
      end
    end
  end

  it 'returns the integer passed to it if it is not a multiple of 3 or 5' do
    (3..300).each do |n|
      if n % 5 != 0 && n % 3 != 0
        expect(fizzbuzz(n)).to eq n
      end
    end
  end

  it 'returns the string passed to it' do
    expect(fizzbuzz('')).to eq ''
  end
end
