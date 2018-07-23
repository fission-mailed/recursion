roman_mapping = {
	"M" 	=> 1000,
	"CM" 	=> 900,
	"D" 	=> 500,
	"CD" 	=> 400,
	"C" 	=> 100,
	"XC" 	=> 90,
	"L" 	=> 50,
	"XL" 	=> 40,
	"X" 	=> 10,
	"IX" 	=> 9,
	"V" 	=> 5,
	"IV" 	=> 4,
	"I" 	=> 1
}

def roman_to_int(string, hash, result = 0)
	string.chomp!
	return result if string == ""
	if hash.keys.include?(string[0])
		if hash.keys.include?(string[0..1]) && string.length > 1
			i = 1
		else
			i = 0
		end
		result += hash[string[0..i]]
		if string.length > 1
			roman_to_int(string[(i+1)..-1], hash, result)
		else
			return result
		end
	else
		result = 0
	end
end

puts roman_to_int("MCMXCI", roman_mapping)
puts roman_to_int("MCMXCIX", roman_mapping)
puts roman_to_int("MMXVIII", roman_mapping)