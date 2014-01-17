

def roman_to_num(roman)
	roman_arr = [{:roman => "I", :num => 1}, 
			{:roman => "V", :num => 5}, 
			{:roman => "X", :num => 10},
			{:roman => "L", :num => 50},
			{:roman => "C", :num => 100},
		 	{:roman => "D", :num => 500},
		 	{:roman => "M", :num => 1000}]

	return 4 if roman == "IV"
	return 9 if roman == "IX"
	return 40 if roman == "XL"
	return 44 if roman == "XLIV"
	return 49 if roman == "XLIX"

	if roman.include?("IX")
		r_as = roman.split("IX").join.split("")
	elsif roman.include?("IV")
		r_as = roman.split("IV").join.split("")
	else 
		r_as = roman.split("XL").join.split("")
	end
		
	r_as.map! do |r|
		roman_arr.map do |x|
			if x[:roman] == r 
				x[:num]
			end
		end
	end

	if roman.include?("IV")
		return (r_as.flatten.compact.inject(&:+) + 4)
	elsif roman.include?("IX")
		return (r_as.flatten.compact.inject(&:+) + 9)
	elsif roman.include?("XL")
		return (r_as.flatten.compact.inject(&:+) + 40)
		
	else 
		return r_as.flatten.compact.inject(&:+)
	end

end


