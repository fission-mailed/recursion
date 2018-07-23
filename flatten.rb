def flatten(ary, result = [])
	ary.each do |element|
		if element.kind_of?(Array)
			flatten(element, result)
		else
			result << element
		end
	end
	result
end

print flatten([[1,2],[3,4]])
print flatten([[1,[8,9]],[3,4]])