
def divisible_by?(n, divider)
	n % divider == 0
end


def fizzbuzz(n)
	return "FizzBuzz" if divisible_by?(n, 15)

	return "Fizz" if divisible_by?(n, 3)

	return "Buzz" if divisible_by?(n, 5)

	return n
end