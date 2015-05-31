n = gets.chomp.to_i
t = gets.chomp.split(' ').map{|e| e.to_i}

t = t.sort

i = 0

while i < n do
	if i == n-1 or t[i] != t[i+1]
		break
	end

	i = i + 2
end

puts t[i]
