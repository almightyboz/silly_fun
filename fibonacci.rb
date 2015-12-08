

def find_fibo (n)
	penultimate = 1
	fibo = 0
	n.times do
		temporary_variable = fibo + penultimate
		penultimate = fibo
		fibo = temporary_variable
	end
	return fibo
end



require "minitest/spec"
require "minitest/autorun"

describe "find_fibo" do

	it "Tells you a value on the sequence based on your place" do
		find_fibo(1).must_equal 1
		find_fibo(6).must_equal 8
	end

	it "says that 5 and 5 are the same, which is just weird" do
		find_fibo(5).must_equal 5
	end
end