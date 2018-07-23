def bottles(n)
	word = "bottles"
	if n == 1
		word = word[0..-2]
	end
	if n == 0
		puts "No bottles of beer on the wall."
	else
		puts "#{n} #{word} of beer on the wall."
		bottles(n-1)
	end
end

bottles(10)