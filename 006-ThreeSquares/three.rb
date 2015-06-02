def find_number_of_anomalies(n)
	t = Math.sqrt(n).to_i + 1
	s = (0..n).to_a
	
	for i in 0..t
		for j in 0..t
			for k in 0..t
				x = i*i + j*j + k*k

				if x <= n
					s[x] = -1
				end
			end
		end
	end

	count = 0

	s.each do |e|
		if e != -1
			count = count + 1
		end
	end

	return count 
end

n = gets.chomp.to_i
puts find_number_of_anomalies(n)