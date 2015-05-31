class Array
	def sum
		s = 0
		for i in 0..size-1
			s = s + self[i].to_i
		end
		return s
	end

	def max
		max = self[0].to_i
		# puts max
		for i in 1..size-1
			if max < self[i].to_i
				max = self[i].to_i
				# puts "#{i}, #{max}"
			end
		end
		return max
	end
end

puts gets(nil).split(/\s+/).max
