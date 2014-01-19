def num_to_roman(num)
	roman_arr = [{:roman => "I", :num => 1},
			{:roman => "IV", :num => 4},  
			{:roman => "V", :num => 5},
			{:roman => "IX", :num => 9},
			{:roman => "X", :num => 10},
			{:roman => "XL", :num => 40},
			{:roman => "L", :num => 50},
			{:roman => "XC", :num => 90},
			{:roman => "C", :num => 100},
		 	{:roman => "D", :num => 500},
		 	{:roman => "CM", :num => 900},
		 	{:roman => "M", :num => 1000}]

	narr = []

	loop do

		arr = []
		for i in 1..num
			arr << i
		end
		newa = arr.map do |n|
			roman_arr.map do |r|
				if n >= r[:num]
					r[:roman]
				end
			end
		end

		newa.map! {|e| e.compact}.flatten!

		val = roman_arr.select {|x| x[:roman] == newa.last}.map {|h| h[:num]}.join.to_i

		narr << roman_arr.select {|x| x[:roman] == newa.last}.map {|h| h[:roman]}.join
		
		num = num - val
		
		break if num == 0
	end
	
	return narr.join

end