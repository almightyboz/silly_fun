def fizzbuzz(n)
	if n % 3 == 0 && n % 5 == 0
		return "FizzBuzz"
	elsif n % 3 == 0 && n % 5 != 0
		return "Fizz"
	elsif n % 3 != 0 && n % 5 == 0
		return "Buzz"
	else
		return n
	end
end

require "minitest/spec"
require "minitest/autorun"

describe "fizzbuzz" do 

	it "prints Fizz if a number is divisible by 3" do
		fizzbuzz(3).must_equal "Fizz"
	end

	it "prints Buzz if a number is divisible by 5" do
		fizzbuzz(25).must_equal "Buzz"
	end

	it "prints FizzBuzz if a number is divisible by 3 and 5" do
		fizzbuzz(15).must_equal "FizzBuzz"
	end

	it "Returns the number if it is divisible by neither" do
		fizzbuzz(11).must_equal 11
	end

end

(1..100).each { |x| puts fizzbuzz(x) }