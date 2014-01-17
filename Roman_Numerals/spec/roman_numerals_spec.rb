require './roman_numerals'

describe "Roman Numerals To Numbers" do 

	it "I should return 1" do 
		expect(roman_to_num("I")).to eq(1)
	end

	it "IV should return 4" do 
		expect(roman_to_num("IV")).to eq(4)
	end

	it "V should return 5" do 
		expect(roman_to_num("V")).to eq(5)
	end

	it "IX should return 9" do 
		expect(roman_to_num("IX")).to eq(9)
	end

	it "X should return 10" do 
		expect(roman_to_num("X")).to eq(10)
	end

	it "XIV should return 14" do 
		expect(roman_to_num("XIV")).to eq(14)
	end

	it "XIX should return 19" do 
		expect(roman_to_num("XIX")).to eq(19)
	end

	it "XL should return 40" do 
		expect(roman_to_num("XL")).to eq(40)
	end

	it "XLI should return 41" do 
		expect(roman_to_num("XLI")).to eq(41)
	end

	it "MDCCC should return 1800" do 
		expect(roman_to_num("MDCCC")).to eq(1800)
	end

end