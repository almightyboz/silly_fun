
def prime_factorization(n)
	factors = []
	(2..(n-1)).each do |x|
		if n % x == 0
			factors << x
		end
	end
	if factors.length == 0
		puts "#{n} is a prime number."
	else
		puts "#{n} is not a prime number."
		factors.each { |x| puts "#{x} is a factor of #{n}" }
	end
end


def is_prime(n)
	factors = []
	(2..(n-1)).each do |x|
		if n % x == 0
			factors << x
		end
	end
	if factors.length == 0
		return true
	else
		return false
	end
end


# take a number, add one to it
# if result isn't prime, add one again
# if the result is prime, stop the loop and return new number
def next_prime(n)
	n += 1
		if is_prime(n) == true
			return n
		else
			n += 1
		end
	end


puts next_prime(45)



puts "Hello, please enter a number"
number = gets.chomp.to_i
prime_factorization(number)
