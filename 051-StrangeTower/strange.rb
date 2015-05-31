def sum_of_squares(n)
	return n * (n + 1) * (2 * n + 1) / 6
end

def sum(n)
	return n * (n+1) / 2
end

def get_term(n)
	i = 1
	t = sum_of_squares(i)
	
	while t < n do
		i = i + 1
		t = sum_of_squares(i)		
	end
	
	return i
end

def get_store(n, o)
	t = n - sum_of_squares(o-1)
	res = sum(o-1) + t / o

	if t % o != 0
		return res + 1
	else
		return res
	end
end

def get_room(n ,o)
	t = n - sum_of_squares(o-1)

	res = t % o

	if res == 0
		return o
	else
		return res
	end
end

n = gets.chomp.to_i
t = get_term(n)
s = get_store(n, t)
r = get_room(n, t)

puts "#{s} #{r}"
