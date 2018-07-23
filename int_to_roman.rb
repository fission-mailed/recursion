roman_mapping = {
	1000 => "M",
	900 => "CM",
	500 => "D",
	400 => "CD",
	100 => "C",
	90 => "XC",
	50 => "L",
	40 => "XL",
	10 => "X",
	9	=> "IX",
	5	=> "V",
	4	=> "IV",
	1	=> "I"
}

def int_to_roman(num, hash, result = "")
	firstKey = hash.keys[0]
	if num < 1
		return result
	else
		(num/firstKey).times do
			result += hash[firstKey]
		end
		remainder = num % firstKey
		hash.delete(firstKey)
		int_to_roman(remainder, hash, result)
	end
end

puts int_to_roman(1999, roman_mapping)