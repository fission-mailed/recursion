def fibs(n)
	fib = [1,1]
	if n >= 2
		(n-2).times do
			fib.push(fib[-1] + fib[-2])
		end
	elsif n == 1
		fib = [1]
	else
		puts "Invalid number, number should be a positive integer."
		fib = []
	end
	puts "The Fibonacci sequence up to term #{n} is:"
	puts "#{fib.join(", ")}"
end

def fibs_rec(n, array = [0,1])
	return [0,1] if n == 1
	array = fibs_rec(n-1, array)
	array << array[-1] + array[-2]
end

puts fibs_rec(2).join(", ")