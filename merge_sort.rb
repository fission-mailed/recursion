=begin
	Reminder: Do not start a ruby variable with a capital letter
	Ruby treats this as a constant that cannot be changed.
=end

def merge_sort(arr)
	if arr.length <= 1
		arr
	else
		# Divide the array into 2
		a = arr[0...arr.length/2]
		b = arr[arr.length/2..-1]
		# Sort each half of the array by calling merge_sort on each half
		a_sort = merge_sort(a)
		b_sort = merge_sort(b)
	
		i,j,k = 0,0,0
		
		c = []
		while i < a_sort.length and j < b_sort.length
			# Compare next elements of the 2 arrays (starting with first elements)
			# Add smallest value of the pair of elements
			# Move along 1 index and compare again
			if a_sort[i] < b_sort[j]
				c[k] = a_sort[i]
				i += 1
			else
				c[k] = b_sort[j]
				j += 1
			end
			k += 1
		end
		
		# By now iterated through 1 of the arrays
		# Since the other array is already sorted, just add remaining elements
		if i == a_sort.length
			c = c + b_sort[j..-1]
		else
			c = c + a_sort[i..-1]
		end
		# Return merged array
		c
	end
end