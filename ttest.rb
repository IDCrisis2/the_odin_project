values = [42, 'a', 'r', 9, 5, 1022, 8.7, "sharon", "Libya", "Mars", "12", 98, rand + rand, {:dog => 'cat'}, 100, nil, 200.0000, Object, 680, 3.14, "Steve", 78, "Argo"].shuffle

while values.length > 0
	a = values.pop
	b = values.pop
# a = 10
# b = "42"

# a + b

	begin
		a + b
	rescue
		puts "Could not add variables a (#{a.class}) and b (#{b.class})"
	else
		puts "a + b is #{a + b}"
	end
end