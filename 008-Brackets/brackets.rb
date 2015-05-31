def is_valid_brackets(s)
	count = 0

	s.split("").each do |c|
		if c == '('
			count += 1
		elsif c == ')'
			count -= 1
		end
		
		if count < 0
			return 'NO'
		end
	end

	if count == 0
		return 'YES'
	else
		return 'NO'
	end
end

s = gets.chomp
puts is_valid_brackets(s)