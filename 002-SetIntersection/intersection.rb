class Array
	def intersection(second_array)
		i = 0
		j = 0
		
		intersection_array = Array.new

		while i < self.size and j < second_array.size do 			
			if self[i] < second_array[j]
				i = i + 1
			elsif self[i] > second_array[j]
				j = j + 1
			else
				intersection_array.push(self[i])
				i = i + 1
				j = j + 1
			end
		end

		if intersection_array.size > 0
			return intersection_array
		else
			return "empty"
		end
	end
end

a = gets.chomp.split(/\s+/).map{|e| e.to_i }
b = gets.chomp.split(/\s+/).map{|e| e.to_i }

a = a[0..-2].sort
b = b[0..-2].sort 

res = a.intersection(b)

if res == 'empty'
	puts res
else
	puts res.join(' ')
end
