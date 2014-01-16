require './fizzbuzz'

describe "FizzBuzz Test - "  do 
	
	it "should return 1 for 1" do 
		expect(fizzbuzz(1)).to eq(1)
	end

	it "should return Fizz for 3" do 
		expect(fizzbuzz(3)).to eq("Fizz")
	end

	it "should return Buzz for 5" do 
		expect(fizzbuzz(5)).to eq("Buzz")
	end

	it "should return FizzBuzz for 15" do 
		expect(fizzbuzz(15)).to eq("FizzBuzz")
	end

end 