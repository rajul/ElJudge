def fibo(n)
	if n == 0 or n == 1
		return 1
	end

	t_0 = 1
	t_1 = 1

	i = 2

	while i <= n do		
		t = t_1
		t_1 = t_1 + t_0
		t_0 = t

		i = i + 1
	end

	return t_1
end

n = gets.chomp.to_i
puts fibo(n)
