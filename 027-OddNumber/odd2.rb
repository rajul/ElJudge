n = gets.chomp.to_i
t = gets.chomp.split(' ').map{|e| e.to_i}

t = t.sort

x = t[0]
i = 1

while i < n do
	x = x ^ t[i]
	i = i + 1
end

puts x