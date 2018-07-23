def palindrome?(string, n)
	string.downcase!
	m = string.length - n
	if string[m] == string[n-1]
		result = true
		palindrome?(string, (n-1))
	else
		result = false
	end
	
	return result
end

quit = false

until quit
	puts "Enter a word:"
	word = gets.chomp
	if word == "quit"
		quit = true
	else
		n = word.length
		if palindrome?(word,(n))
			puts "#{word} is a palindrome"
		else
			puts "#{word} is not a palindrome"
		end
	end
end