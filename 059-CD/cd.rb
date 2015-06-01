def knapsack(a, w, n)
	l = n
	
	t = Array.new(l+1) {Array.new(w+1)}

	for i in 0..l do
		for j in 0..w do
			t[i][j] = 0
		end
	end
		
	for i in 1..l do
		wt = a[i-1]
		
		for j in 1..w do
			if wt > j
				t[i][j] = t[i-1][j]
			else
				t[i][j] = [t[i-1][j], t[i-1][j - wt] + wt].max
			end
		end
	end
	# t.map{|e| puts "t #{e.join(" ")}"}
	return t[l][w]
end

t = gets(nil).chomp
t = t.split(/\s+/)

N = t[0].to_i
n = t[1].to_i

d = t[2..n+1].map{|e| e.to_i}

puts knapsack(d, N, n)