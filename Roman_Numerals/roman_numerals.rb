# Roman Numeral to Numbers 
## Comments are in the bottom of the file

def roman_to_num(roman)
	roman_arr = [{:roman => "I", :num => 1}, 
			{:roman => "V", :num => 5}, 
			{:roman => "X", :num => 10},
			{:roman => "L", :num => 50},
			{:roman => "C", :num => 100},
		 	{:roman => "D", :num => 500},
		 	{:roman => "M", :num => 1000}]

	r_a = roman.split("")

	r_a.map! do |x| 
		roman_arr.map do |r|
			if x == r[:roman]
				r[:num]
			end
		end
	end

	v_a = r_a.flatten.compact

	narr = [v_a[0]]
	i = 1
	while i < v_a.length
		if v_a[i] > v_a[i-1]
			narr << v_a[i] - v_a[i-1] - v_a[i-1]	# Comment: 1
		else 
			narr << v_a[i]
		end
		i += 1 
	end
	return narr.inject(&:+)
end


# Comment: 1
## subtracting the current value twice as the previous value 
## is already pushed into the array during the loop, hence it 
## will have to be deleted again.


