# fizzbuzz

The "Fizz-Buzz test" is an interview question designed to help filter out the 99.5% of programming job candidates who can't seem to program their way out of a wet paper bag. The text of the programming assignment is as follows:
> "Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”."

[http://wiki.c2.com/](http://wiki.c2.com/?FizzBuzzTest)

As part of our Makers Academy training, we used the FizzBuzz test to introduce us to two concepts:
1. Test Driven Development (TDD)
1. Pair Programming

## Test Driven Development (TDD)
Test driven development is a software programming practice that can radically increase code quality and program design. It is used throughout top software development companies and we are hardcore advocates of it here at Makers Academy.

## Pair Programming

Pair programming is the process whereby two people actively collaborate on developing code.

## The Makers Academy FizzBuzz specs

In the case of our assignment, the specifications were the following:

1. The program can be passed a number.
1. When passed a number that is a multiple of 3, the program returns the message 'Fizz'.
1. When passed a number that is a multiple of 5, the program returns the message 'Buzz'.
1. When passed a number that is a multiple of both 3 and 5, the program ignores the previous 2 rules and returns the message 'FizzBuzz'.
1. In all other cases, the program simply returns the given number.

That means that we're not limited to 1 to 100 like in the generic test spec. Also, within the assignment, 'Fizz', Buzz' and 'FizzBuzz' are referred to with and without capital letters so for clarity we decided to only use lower cases in the code.


## Specific use cases to take into account

1. Zero
1. Negative numbers
1. Non-integers
1. Strings

## Usage

FizzBuzz is a simple method so we can show it all here:

```ruby
def fizzbuzz(n)
  if n % 15 == 0
     "fizzbuzz"
  elsif n % 3 == 0
     "fizz"
  elsif n % 5 == 0
     "buzz"
  else
     n
  end
end
```

We then used Rspec to test the behavior of the code. Here is an example for multiples of 3:

```ruby
require 'fizzbuzz'

describe 'fizzbuzz' do
  it 'returns "fizz" when passed a multiple of 3' do
    (0..100).each do |n|
      if n % 3 == 0 && n % 5 != 0
        expect(fizzbuzz(n)).to eq 'fizz'
      end
    end
  end
end
```

This test checks a range from 0 to 100. If a number is a multiple of 3 but not a multiple of 5, and returns 'fizz' then it will pass the test.

### What about zero?

Zero could be divided by any number and the remainder is zero. In the context of our test, this means that zero is a multiple of both 3 and 5 so it should return 'fizzbuzz'.
