def insertionSort (arr)
	a = Array.new()
	arr.each do |x| 
		b = true
		i = 0
		while (b)
			if a.empty?
				b = false
				a.unshift(x)
			elsif i == a.length
				a.push(x)
				b = false
			elsif a.at(i) > x
				a.insert(i, x)
				b = false
			else
				i += 1
			end
		end
	end
	a
end

p insertionSort([1,3,8,2,5,3,9])
p insertionSort([15,6,51,27,5,3,8,48,34])